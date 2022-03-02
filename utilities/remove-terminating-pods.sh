#!/bin/sh
echo "Por remover Terminating del namespace '${1:-default}' (para cambiar namespace remove-terminating-pods.sh <namespace>)"
kubectl get pod -n ${1:-default}| grep Terminating | awk '{print $1}' | xargs kubectl delete pod -n ${1:-default}
