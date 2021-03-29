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

async function generateDiskIdsFromKubernetes() {
  const content = await (() =>
    new Promise((resolve, reject) => {
      exec(`kubectl get pv`, (error, stdout, stderr) => {
        if (error) reject(error);
        if (stderr) reject(stderr);
        resolve(stdout);
      });
    }))();
  return content
    .replaceAll('\t', ' ')
    .split('\n')
        .filter((line, idx) => line != '' && idx>0)
    .map((line) => {
      const parsedLine = line.match(/(\S+)\s+/);
      if (parsedLine && parsedLine.length > 1) {
        return {
          pvName: parsedLine[1],
        };
      }
    });
}

// const diskList = parseDiskContent(loadVmWareDisks('disks.txt'));
generateDiskIdsFromKubernetes().then(pvc => {
    console.log(pvc)
});
