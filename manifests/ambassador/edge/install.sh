#!/bin/sh

kubectl apply -f https://www.getambassador.io/yaml/aes-crds.yaml
kubectl wait --for condition=established --timeout=90s crd -lproduct=aes && \
wget https://www.getambassador.io/yaml/aes.yaml 
cat aes.yaml | sed 's/type: LoadBalancer/type: NodePort/gi' > aes_nodeport.yaml
kubectl apply -f aes_nodeport.yaml
kubectl -n ambassador wait --for condition=available --timeout=90s deploy -lproduct=aes
rm aes.yaml
rm aes_nodeport.yaml
