const k8s = require("@kubernetes/client-node");
const logger = require("pino")();
const PagerDuty = require("pagerduty");
const checkSpace = require("./src/check-space");
require('dotenv').config();

const NAMESPACE = process.env.NS || "default";
const SPACE_USED_TRESHOLD = process.env.SPACE_USED_TRESHOLD || 10;

const pager = new PagerDuty({
  serviceKey: process.env.PAGER_DUTY_SERVICE_KEY,
});

async function sendAlert(pod, spaceUsed) {
  logger.info(
    `El pod ${pod.pod} ha excedido el limite de uso de disco. Se encuentra en ${spaceUsed}`
  );
  await Promise.all(
    pod.volumes.map(
      (volume) =>
        new Promise((resolve, reject) => {
          pager.create({
            description: `Espacio excedido ${pod.pod} usado ${spaceUsed}`,
            details: {
              namespace: NAMESPACE,
              pod: pod.pod,
              pvc: volume.pvc,
              claimName: volume.claimName,
              mountPath: volume.mountPath,
              used: spaceUsed,
            },
            callback: (err, response) =>
              err ? reject(err) : resolve(response),
          });
        })
    )
  );
}

function manageErrors(error) {
  logger.error(error);
  process.exit(-1);
}

checkSpace(k8s, logger, NAMESPACE, SPACE_USED_TRESHOLD, sendAlert)(manageErrors);
