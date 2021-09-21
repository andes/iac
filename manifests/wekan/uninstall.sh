#!/bin/sh

if [ "$#" -ne 1 ]; then
    echo "parametros incorrectos"
    echo "./install '<namespace>'"
    exit;
fi

export NAMESPACE=$1
helm uninstall wekan  --namespace $NAMESPACE
kubectl delete ns $NAMESPACE
