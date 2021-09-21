#!/bin/sh

echo "El POD que esta usando el PVC debe estar sin correr - Ej poner el deployment en 0 running"
if [ "$#" -ne 1 ]; then
    echo "parametros incorrectos"
    echo "./mount-pvc-for-debugging.sh '<pvc>'"
    exit;
fi

# Create POD
sed 's/PVC/'$1'/g' pod-template.yaml > pod.yaml
kubectl apply -f pod.yaml

# Wait to pod to be in running state
while [[ $(kubectl get pods volume-debugger -o 'jsonpath={..status.conditions[?(@.type=="Ready")].status}') != "True" ]]; do echo "waiting for pod" && sleep 1; done

# Connect to pod shell
kubectl exec -it volume-debugger sh

# Destroy pod
kubectl delete -f pod.yaml
rm pod.yaml
