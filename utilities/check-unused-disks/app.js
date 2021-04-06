const fs = require('fs');
const { exec } = require('child_process');

function loadVmWareDisks(filename) {
  return fs.readFileSync(filename, 'utf-8');
}

function parseDiskContent(content) {
  return content
    .replaceAll('\t', ' ')
    .split('\n')
    .filter((line) => line != '')
    .map((line, idx) => {
      const parsedLine = line.match(/(\S+)\s+(\S+)\s+(\S+)/);
      if (parsedLine && parsedLine.length > 1) {
        const [_, id, vvol, disk] = parsedLine;
        return {
          id,
          vvol,
          disk,
        };
      }
    });
}

async function executeCommand(cmd) {
  return new Promise((resolve, reject) => {
    exec(cmd, (error, stdout, stderr) => {
      if (error) reject(error);
      if (stderr) reject(stderr);
      resolve(stdout);
    });
  });
}

function getDiskIdFromPVName(pvName) {
  return executeCommand(`kubectl get pv ${pvName} -o json | jq '.spec.csi.volumeHandle' | tr -d '"' | tr -d "\n" `);
}

async function generateDiskIdsFromKubernetes() {
  try {
    const content = await executeCommand(`kubectl get pv`);
    const disksPromises = content
      .replaceAll('\t', ' ')
      .split('\n')
      .filter((line, idx) => line != '' && idx > 0)
      .map((line) => {
        const parsedLine = line.match(/(\S+)\s+/);
        if (parsedLine && parsedLine.length > 1) {
          const pvName = parsedLine[1];
          return getDiskIdFromPVName(pvName);
        }
      });
    return Promise.all(disksPromises);
  } catch (e) {
    // console.log(e);
    return [];
  }
}

function changeToNextContext() {
  let currentContextIndex = 0;
  let contextList = [];

  // const getCurrentKubernetesContext = async () => {
  //   return executeCommand(`kubectl config current-context`);
  // };

  const setCurrentKubernetesContext = async (contextName) => {
    return executeCommand(`kubectl config use-context ${contextName}`);
  };

  const getContextList = async () => {
    const contextResponse = await executeCommand(`kubectl config get-contexts`);
    return contextResponse
      .replaceAll('\t', ' ')
      .split('\n')
      .filter((line, idx) => line != '' && idx > 0)
      .map((line) => {
        const parsedLine = line.match(/[\ \*]+(\S+)\s+/);
        return parsedLine && parsedLine.length > 1 ? parsedLine[1] : undefined;
      });
  };

  return async () => {
    if (contextList.length === 0) {
      contextList = await getContextList();
    } else {
      currentContextIndex++;
    }
    if (currentContextIndex > contextList.length - 1) {
      return false;
    }
    await setCurrentKubernetesContext(contextList[currentContextIndex]);
    return true;
  };
}

function getDiskIdFromVCenterDisks(item) {
  console.log('vcenter', item.id);
  return item.id;
}
function getDiskIdFromKubernetesDisks(item) {
  console.log('kubernetes', item);
  return item;
}

function findMissingItemsInSource(compareFunction, source, itemsToCheck) {
  return source.reduce(
    (missingItems, currentItem) =>
      missingItems.concat(
        itemsToCheck.find((currentItemToCheck) => compareFunction(currentItem, currentItemToCheck)) ? [] : currentItem,
      ),
    [],
  );
}

(async () => {
  const fileDisks = parseDiskContent(loadVmWareDisks('disks.txt'));
  // console.log(fileDisks);
  let pvcList = [];
  const changeContext = changeToNextContext();
  while (await changeContext()) {
    const list = await generateDiskIdsFromKubernetes();
    if (list && list.length > 0) pvcList = [...pvcList, ...list];
  }
  const isInKubernetes = (vcenterDisk, kubernetesDisk) =>
    getDiskIdFromVCenterDisks(vcenterDisk) == getDiskIdFromKubernetesDisks(kubernetesDisk);
  const missingItemsInKubernetes = findMissingItemsInSource(isInKubernetes, fileDisks, pvcList);
  // console.log('Todos los PV son', pvcList);
  console.log('Discos que estan en VCenter y NO en Kubernetes', missingItemsInKubernetes);
})();
// const diskList = parseDiskContent(loadVmWareDisks('disks.txt'));
