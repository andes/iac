#!/bin/sh

if [ "$#" -ne 1 ]; then
    echo "parametros incorrectos"
    echo "./install <nombre del archivo de configuración de vsphere>"
    exit;
fi

cp $1 csi-vsphere.conf

# Label first node
FIRST_NODE=$(kubectl get nodes -o json | jq '.items[0].metadata.name' | tr -d '"')
kubectl label nodes $FIRST_NODE node-role.kubernetes.io/master=""

kubectl create secret generic vsphere-config-secret --from-file=csi-vsphere.conf --namespace kube-system


kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/vsphere-csi-driver/master/manifests/v2.1.0/vsphere-7.0/rbac/vsphere-csi-controller-rbac.yaml

kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/vsphere-csi-driver/master/manifests/v2.1.0/vsphere-7.0/deploy/vsphere-csi-controller-deployment.yaml

kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/vsphere-csi-driver/master/manifests/v2.1.0/vsphere-7.0/deploy/vsphere-csi-node-ds.yaml

echo "Verificar el estado del deployment con 'kubectl get deployment --namespace=kube-system'"

echo "Cuando todos los deployments esten corriendo, ejecutar 'kubectl apply -f storageClass.yaml'"
