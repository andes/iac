#!/bin/sh

set -e

if [ "$#" -ne 2 ]; then
    echo "parametros incorrectos"
    echo "./install '<dominio>' <volumeSnapshotClass>"
    exit;
fi

curl https://docs.kasten.io/tools/k10_primer.sh | bash

helm repo add kasten https://charts.kasten.io/

kubectl create namespace kasten-io

helm install k10 kasten/k10 --namespace=kasten-io

export VSC=$2
kubectl annotate volumesnapshotclass $VSC k10.kasten.io/is-snapshot-class=true

export DOMAIN=$1
envsubst < ingress.yml | kubectl apply -f -

echo "La interfaz web se encuentra en http://"$DOMAIN":30080/k10/#/"
