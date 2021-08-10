#!/bin/sh

kubectl apply -f https://www.getambassador.io/yaml/ambassador/ambassador-crds.yaml
kubectl apply -f https://www.getambassador.io/yaml/ambassador/ambassador-rbac.yaml

kubectl apply -f service.yaml
