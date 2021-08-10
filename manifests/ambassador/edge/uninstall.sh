#!/bin/sh

wget https://www.getambassador.io/yaml/aes.yaml 
cat aes.yaml | sed 's/type: LoadBalancer/type: NodePort/gi' > aes_nodeport.yaml
kubectl delete -f aes_nodeport.yaml
rm aes.yaml
rm aes_nodeport.yaml
kubectl delete -f https://www.getambassador.io/yaml/aes-crds.yaml
