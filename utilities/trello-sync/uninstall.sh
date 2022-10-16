#!/bin/sh

kubectl delete -f manifests/01-namespace.yaml
kubectl delete -f manifests/05-secret.yaml
kubectl delete -f manifests/07-configmap.yaml
kubectl delete -f manifests/10-cronjob.yaml

