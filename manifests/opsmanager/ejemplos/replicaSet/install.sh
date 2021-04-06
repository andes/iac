#!/bin/sh

if [ "$#" -ne 3 ]; then
    echo "parametros incorrectos"
    echo "./install.sh  '<namespace>' '<publicKey>' '<privateKey>'"
    exit;
fi

kubectl create namespace $1

export NAMESPACE=$1
export MONGO_BASE_URL=http://ops-manager.192-168-68-42.nip.io:30443
export PROJECT_NAME=ops-manager-db
export ORG_ID=ops-manager-db

envsubst < 00-configmap.yaml | kubectl apply -f -

kubectl -n $1 create secret generic test-secret-mongo --from-literal="user=$2" --from-literal="publicApiKey=$3"

kubectl -n $1 apply -f 01-replica.yaml
