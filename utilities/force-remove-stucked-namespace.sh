#!/bin/sh

if [ "$#" -ne 1 ]; then
    echo "parametros incorrectos"
    echo "./force-remove-stucker-namespace.sh '<namespace>'"
    exit;
fi

kubectl get namespace $1 -o json > $1.json
cat $1.json | jq 'del(.spec.finalizers[])' > $1.new.json
kubectl replace --raw "/api/v1/namespaces/${1}/finalize" -f ./$1.new.json
rm $1.json
rm $1.new.json

