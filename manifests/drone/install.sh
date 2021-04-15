#/bin/sh

if [ "$#" -ne 4 ]; then
    echo "parametros incorrectos"
    echo "./install '<namespace>' '<dominio>' '<github clientid>' '<github client secret>'"
    exit;
fi

set -e

export NAMESPACE=$1
export DOMAIN=$2
export GITHUB_CLIENT_ID=$3
export GITHUB_CLIENT_SECRET=$4
export SECRET=$(openssl rand -hex 24)
envsubst < namespace.yml | kubectl apply -f -
envsubst < ingress.yml | kubectl apply -f -
envsubst < values.yml > values_applied.yml
envsubst < values-runner.yml > values-runner_applied.yml

helm repo add drone https://charts.drone.io
helm repo update
helm install --namespace $NAMESPACE drone drone/drone -f values_applied.yml
helm install --namespace $NAMESPACE drone-runner-kube drone/drone-runner-kube -f values-runner_applied.yml

rm values_applied.yml
rm values-runner_applied.yml


echo "Verifique que en github el clientId y Secret proporcionados tengan configurado el dominio http://${DOMAIN}:30443"


