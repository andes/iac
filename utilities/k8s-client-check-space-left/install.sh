#/bin/sh

 if [ "$#" -lt 3 ]; then
     echo "parametros incorrectos"
     echo "./install '<namespace>' '<% de espacio usado para disparar alerta>' '<pagerDuty service key>' '<opcional:cron ej ** */3 * * '> "
     exit;
 fi

# set -e

export NAMESPACE=$1
export SPACE_USED_TRESHOLD=$2
export PAGER_DUTY_SERVICE_KEY=$3
export SCHEDULE="* */3 * * *"

if [ "$#" -eq 4 ]; then
  SCHEDULE=$4
fi

envsubst < manifests/rbac.yaml | kubectl apply -f -
envsubst < manifests/configmap.yaml | kubectl apply -f -
envsubst < manifests/cronjob.yaml | kubectl apply -f -
