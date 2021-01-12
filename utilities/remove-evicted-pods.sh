#!/bin/sh
echo "Por remover evicted del namespace '${1:-default}' (para cambiar namespace remove-evicted-pods.sh <namespace>)"
kubectl get pod -n ${1:-default}| grep Evicted | awk '{print $1}' | xargs kubectl delete pod -n ${1:-default}

