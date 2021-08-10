#!/bin/sh

kubectl delete -f service.yaml
kubectl delete -f https://www.getambassador.io/yaml/ambassador/ambassador-rbac.yaml
kubectl delete -f https://www.getambassador.io/yaml/ambassador/ambassador-crds.yaml
