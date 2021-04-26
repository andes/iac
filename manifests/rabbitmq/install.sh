#/bin/sh

 if [ "$#" -ne 2 ]; then
     echo "parametros incorrectos"
     echo "./install '<namespace>' '<domain>' "
     exit;
 fi

# set -e

export NAMESPACE=$1
export DOMAIN=$2

# helm repo add bitnami https://charts.bitnami.com/bitnami
# helm repo update
# helm install --create-namespace $NAMESPACE --namespace $NAMESPACE bitnami/rabbitmq

envsubst < ingress.yml | kubectl apply -f -
