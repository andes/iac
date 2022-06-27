const fs = require('fs');
const csv = require('csv');
const { exec } = require('child_process');

const DATACENTER = 'HospitalNeuquen';
const DATASTORE = 'VvolRancherClusters';

function loadVmWareDisks(filename) {
  return fs.readFileSync(filename, 'utf-8');
}

function parseDiskContent(content) {
  return new Promise((resolve, reject) => {
    csv.parse(content, {columns: true, delimiter: ','}, (err, data) => {
      err && reject(err)
      // const disks = data.filter(row => row.Datastore == DATASTORE && row['Virtual Machine'] == '');
      const disks = data.filter(row => row.Datastore == DATASTORE);
      resolve(disks)
    })
  })
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

async function generateVolumeHandlesFromKubernetes(contextName) {
  try {
    const content = await executeCommand(`kubectl get pv`);
    const disksPromises = content
      .replaceAll('\t', ' ')
      .split('\n')
      .filter((line, idx) => line != '' && idx > 0)
      .map(async(line) => {
        const parsedLine = line.match(/(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s+/);
        if (parsedLine && parsedLine.length > 1) {
          const pvName = parsedLine[1];
          return {context: contextName, name: pvName, claim: parsedLine[6], volumeHandle: await getDiskIdFromPVName(pvName)};
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
    console.log(`Context: ${contextList[currentContextIndex]}`)
    return contextList[currentContextIndex];
  };
}

function getDiskIdFromVCenterDisks(item) {
  return item.id;
}
function getDiskIdFromKubernetesDisks(item) {
  return item;
}
function not(comparison) {
  return !comparison;
}

function exportMissingDisksToFile(fileName, missingDisks, storageList) {
  const listToExport = storageList.filter(row => missingDisks.find(missedDisk => missedDisk == row['VMware UUID']))
  csv.stringify(listToExport, {header: true}, (err, csvData) => {
    fs.writeFileSync(fileName, csvData, 'utf-8');
  })
}

function findMissingItemsInSource(compareFunction, source, itemsToCheck) {
  return source.filter((sourceItem) =>{
    return !itemsToCheck.find((currentItemToCheck) => {
      return compareFunction(sourceItem, currentItemToCheck)})
  });
}

async function convertVolumeHandleToVMDiskName(volume) {
  const extractUUID = (fullName) => fullName.split('/')[0]
  try {
    const volumeResponse = await executeCommand(`govc disk.ls -L=true -dc=${DATACENTER} -ds=${DATASTORE} -l ${volume.volumeHandle} | awk '{print $3}'`);
    return {...volume, disk: extractUUID(volumeResponse)}
  } catch(e) {
    return {...volume, disk: 'error'}
  }
}

(async () => {
  const [,,csvFile] = process.argv;
  if (!csvFile) {
    console.log('Uso: node app_storage.js <archivo CSV exportado del Unity>')
    return 
  }
  const storageList = await parseDiskContent(loadVmWareDisks(csvFile));
  const storageDiskList = storageList.map(row => row['VMware UUID']);
  let pvcList = [];
  const changeContext = changeToNextContext();
  while (currentContextName = await changeContext()) {
    const list = await generateVolumeHandlesFromKubernetes(currentContextName);
    if (list && list.length > 0) pvcList = [...pvcList, ...list];
  }
  const kubernetesDisks = await Promise.all(pvcList.map(convertVolumeHandleToVMDiskName))
  const kubernetesDisksWithoutError = kubernetesDisks.filter(item => item.disk != 'error')
  const kubernetesDisksWithError = kubernetesDisks.filter(item => item.disk == 'error')
  const isInKubernetes = (storageDisk, kubernetesDisk) => storageDisk == kubernetesDisk.disk
  const missingDisks = findMissingItemsInSource(isInKubernetes, storageDiskList, kubernetesDisksWithoutError);
  // console.log('Todos los discos no utilizados son', missingDisks);
  exportMissingDisksToFile('discos_no_usados_en_k8s.csv', missingDisks, storageList);
  console.log(
    `Se encontraron ${missingDisks.length} discos que no estan en Kubernetes. El listado completo se encuentra en el archivo 'discos_no_usados_en_k8s.csv'`,
  ); 
  console.log(`Discos con error: ${kubernetesDisksWithError.length} / Sin error: ${kubernetesDisksWithoutError.length} / Total en archivo entrada: ${storageDiskList.length}`)
})();

module.exports = {
  findMissingItemsInSource
}
