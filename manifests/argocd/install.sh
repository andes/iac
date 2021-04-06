#!/bin/sh

if [ "$#" -ne 1 ]; then
    echo "parametros incorrectos"
    echo "./install '<dominio>'"
    exit;
fi

kubectl create ns argocd

kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml


export DOMAIN=$1
envsubst < ingress.yml | kubectl apply -f -

# Rollout (canary/green-blue)
kubectl create namespace argo-rollouts
kubectl apply -n argo-rollouts -f https://raw.githubusercontent.com/argoproj/argo-rollouts/stable/manifests/install.yaml

STATUS=$(kubectl get pods -n argocd -l app.kubernetes.io/name=argocd-server -o name | cut -d'/' -f 2)

echo "Esperando que se inicie ArgoCD para poder obtener la password"
while [ -z "$STATUS" ]
do
    sleep 5s
    STATUS=$(kubectl get pods -n argocd -l app.kubernetes.io/name=argocd-server -o name | cut -d'/' -f 2)
    echo "Esperando 5s para volver a probar"
done

echo "Ir a https://"$DOMAIN":30443"
echo "Usuario: admin"
echo "Contraseña inicial: "
kubectl get pods -n argocd -l app.kubernetes.io/name=argocd-server -o name | cut -d'/' -f 2
