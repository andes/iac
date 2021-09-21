#!/bin/sh

if [ "$#" -ne 1 ]; then
    echo "parametros incorrectos"
    echo "./install <nombre del archivo de configuración de vsphere>"
    exit;
fi

cp $1 csi-vsphere.conf

# Label all nodes
node_list=$(kubectl get nodes -o json | jq '.items[].metadata.name' | tr -d '"')
echo $node_list | xargs -I% bash -c "kubectl label nodes % node-role.kubernetes.io/master="""

kubectl create secret generic vsphere-config-secret --from-file=csi-vsphere.conf --namespace kube-system

# RBAC
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/vsphere-csi-driver/release-2.2/manifests/v2.2.1/rbac/vsphere-csi-controller-rbac.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/vsphere-csi-driver/release-2.2/manifests/v2.2.1/rbac/vsphere-csi-node-rbac.yaml

# CSI
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/vsphere-csi-driver/release-2.2/manifests/v2.2.1/deploy/vsphere-csi-controller-deployment.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/vsphere-csi-driver/release-2.2/manifests/v2.2.1/deploy/vsphere-csi-node-ds.yaml

echo "Verificar el estado del deployment con 'kubectl get deployment --namespace=kube-system'"

echo "Cuando todos los deployments esten corriendo, ejecutar 'kubectl apply -f storageClass.yaml'"
