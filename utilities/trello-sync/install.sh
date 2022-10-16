#!/bin/sh

if [ "$#" -ne 2 ]; then
    echo "parametros incorrectos"
    echo "./install.sh <trello api key> <trello api token>"
    exit;
fi

export __TRELLO_KEY__=$(echo $1 | tr -d '\n' | base64)
export __TRELLO_TOKEN__=$(echo $2 | tr -d '\n' | base64)


kubectl apply -f manifests/01-namespace.yaml
envsubst < manifests/05-secret.yaml | kubectl apply -f -
kubectl apply -f manifests/07-configmap.yaml
kubectl apply -f manifests/10-cronjob.yaml
