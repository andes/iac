#!/bin/sh

set -e
helm repo add kuma https://kumahq.github.io/charts
helm repo update
kubectl create namespace kuma-system
kubectl install --namespace kuma-system kuma kuma/kuma 

echo "Finalizado"
echo "Para acceder a la UI"
echo "kubectl port-forward scv/kuma-control-plane -n kuma-system 5681:5681"
echo "acceder a http://localhost:5681"
