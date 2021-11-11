const stream = require("stream");
const R = require("ramda");

function checkSpace(k8s, logger, namespace, spaceUsedTreshold, sendAlert) {
  const kc = new k8s.KubeConfig();
  logger.level = "info";
  kc.loadFromCluster();
  // kc.loadFromFile("/Users/orlandobrea/.kube/config.pacs-cluster-hpn");

  const k8sApi = kc.makeApiClient(k8s.CoreV1Api);
  const exec = new k8s.Exec(kc);

  let podStdOutput = {};
  let podStdError = {};

  function getStreamsForPod(podName) {
    const streamOut = new stream.PassThrough();
    const streamErr = new stream.PassThrough();
    streamOut.on("data", (chunk) => {
      podStdOutput[podName.pod] = chunk.toString();
    });
    streamErr.on("data", (chunk) => {
      podStdError[podName.pod] = chunk.toString();
    });
    return {
      out: streamOut,
      err: streamErr,
    };
  }

  function getPods(ns) {
    return new Promise((resolve, reject) => {
      k8sApi
        .listNamespacedPod(ns)
        .then((result) => resolve(result.body))
        .catch(reject);
    });
  }

  function getKindFromPod(pod) {
    return pod?.metadata?.ownerReferences[0]?.kind;
  }

  function isRequiredKind(kind) {
    const validKinds = ["statefulset", "deployment", "replicaset"];
    return validKinds.includes(kind.toLowerCase());
  }

  function filterByIncludedTypes(pods) {
    return pods.filter((pod) => R.pipe(getKindFromPod, isRequiredKind)(pod));
  }

  // [{container: appName, pod: Name, volumes: [name: xx, claimName: yyyy]}, ...]
  function getPodsData(filter = null) {
    return function (pods) {
      const podsToCheck = filter ? filter(pods) : pods;
      const onlyWithPVC = (volume) => volume.persistentVolumeClaim;
      const extractNameClaimNameAndMountPath =
        (fnGetMountPath) => (volume) => ({
          name: volume.name,
          claimName: volume.persistentVolumeClaim.claimName,
          mountPath: fnGetMountPath(volume.name),
        });

      const getMountPathForName = (containers) => (name) => {
        const extractNameAndMountPath = (nameToSearch) => (vm) =>
          nameToSearch == vm.name && vm.mountPath;
        const extractContainerMounts = (nameToSearch) => (container) =>
          container.volumeMounts.flatMap(extractNameAndMountPath(nameToSearch));
        const extractContainersData = (nameToSearch, containers) =>
          containers
            .flatMap(extractContainerMounts(nameToSearch))
            .filter((item) => item);
        const mountPaths = extractContainersData(name, containers);
        return mountPaths.length > 0 ? mountPaths[0] : mountPaths;
      };

      const extractInfoFromPod = (pod) => {
        const getMountPathForPVCName = getMountPathForName(pod.spec.containers);
        return {
          container:
            pod.metadata.labels.app ??
            pod.metadata.labels["app.kubernetes.io/name"],
          pod: pod.metadata.name,
          volumes: pod.spec.volumes
            .filter(onlyWithPVC)
            .map(extractNameClaimNameAndMountPath(getMountPathForPVCName)),
        };
      };

      return podsToCheck.map(extractInfoFromPod);
    };
  }

  function getPodsNamesFromNS(ns) {
    const filteredPodNames = getPodsData(filterByIncludedTypes);
    return new Promise((resolve, reject) => {
      getPods(ns)
        .then((pods) => {
          const names = filteredPodNames(pods.items);
          resolve(names);
        })
        .catch(reject);
    });
  }

  function getPVCData(pvcs) {
    return pvcs.map((pvc) => ({ name: pvc.metadata.name }));
  }

  function parsePVCResponse(response) {
    return response.body.items;
  }

  function getPVCNamesFromNS(ns) {
    return new Promise((resolve, reject) => {
      k8sApi
        .listNamespacedPersistentVolumeClaim(ns)
        .then((result) => resolve(R.pipe(parsePVCResponse, getPVCData)(result)))
        .catch(reject);
    });
  }

  function execInSequence(execFn, outFn) {
    return function (podNames) {
      return podNames.reduce(
        (acc, current) => acc.then(() => execFn(current).then(outFn(current))),
        Promise.resolve(null)
      );
    };
  }

  const execCommandInPod = (cmd, ns) => async (podName) => {
    const stream = getStreamsForPod(podName);
    await exec.exec(
      ns,
      podName.pod,
      podName.container,
      cmd,
      stream.out,
      stream.err,
      stream.out,
      true
    );
  };

  function hasVolumeInRequiredPVCs(volumes, pvcs) {
    return getVolumesMatchRequiredPVCs(volumes, pvcs);
  }

  function getVolumesMatchRequiredPVCs(volumes, pvcs) {
    const hasSameClaim = (pod, pvc) => pvc.name == pod.claimName;
    return volumes.reduce(
      (res, current) => [
        ...res,
        {
          ...current,
          pvc: pvcs.filter((pvc) => hasSameClaim(current, pvc))[0].name,
        },
      ],
      []
    );
  }

  function getPodsAndVolumesMatchingPVCNames(pods, pvcs) {
    const removePodsWithoutVolumes = (pods) =>
      pods.filter((pod) => pod.volumes.length > 0);
    return pods.reduce((res, pod) => {
      const rta = hasVolumeInRequiredPVCs(pod.volumes, pvcs)
        ? [
            ...res,
            { ...pod, volumes: getVolumesMatchRequiredPVCs(pod.volumes, pvcs) },
          ]
        : { ...res, test: true };
      return removePodsWithoutVolumes(rta);
    }, []);
  }

  function parseStdoutLine(line) {
    const parsedLine = line
      .split("\n")
      .map((line) => line.replace(/\s+/g, " ").split(" "));
    return parsedLine.map((line) => ({
      fs: line[0],
      size: line[1],
      used: line[4],
      mounted: line[5],
    }));
  }

  function filterLinesByMountPoint(volumes, parsedLines) {
    return volumes.flatMap((volume) =>
      parsedLines.filter((line) => line.mounted == volume.mountPath)
    );
  }

  async function checkSpaceTreshold(pod, volumesSpaceUsed) {
    const convertPercentageToNumber = (percentage) =>
      percentage.replace("%", "");
    const volumesExceedTreshold = volumesSpaceUsed.filter(
      (vol) => convertPercentageToNumber(vol.used) > spaceUsedTreshold
    );
    volumesExceedTreshold.forEach((space) => sendAlert(pod, space.used));
  }

  return () => {
    getPVCNamesFromNS(namespace).then((pvcNames) => {
      getPodsNamesFromNS(namespace).then((podNames) => {
        const podsWithMatchingVolumes = getPodsAndVolumesMatchingPVCNames(
          podNames,
          pvcNames
        );
        const cmdToExecute = execCommandInPod(["df", "-h"], namespace);
        const logOutput = (rta) => {};
        execInSequence(
          cmdToExecute,
          logOutput
        )(podsWithMatchingVolumes).then((rta) => {
          podsWithMatchingVolumes.map((pod) => {
            if (podStdOutput[pod.pod]) {
              const parsedLines = parseStdoutLine(podStdOutput[pod.pod]);
              const filtered = filterLinesByMountPoint(
                pod.volumes,
                parsedLines
              );
              checkSpaceTreshold(pod, filtered);
            }
          });
        });
      });
    });
  };
}

module.exports = checkSpace;
