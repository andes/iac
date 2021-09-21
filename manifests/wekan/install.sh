#!/bin/sh

if [ "$#" -ne 3 ]; then
    echo "parametros incorrectos"
    echo "./install '<namespace>' '<dominio>' '<mongo connection url (mongodb://user:pwd@host:port/db?authSource=authDb)>' "
    exit;
fi

export NAMESPACE=$1
export DOMAIN=$2
export MONGO_CONNECTION=$3


# helm repo add gabisonfire https://gabisonfire.github.io/charts/
# helm repo update
kubectl create ns $NAMESPACE

envsubst < wekan-values.yaml > wekan-values-mod.yaml

helm install wekan gabisonfire/wekan --namespace $NAMESPACE --values wekan-values-mod.yaml

envsubst < ingress.yml | kubectl apply -f -
