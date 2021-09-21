#!/bin/sh

if [ "$#" -ne 1 ]; then
    echo "parametros incorrectos"
    echo "./mount-pod-volume-for-debugging.sh '<pod/deployment/statefulset>'"
    exit;
fi
pvc_name=$(kubectl describe pod dcm4che-elastic | grep ClaimName | awk -F':' '{print $2}' | sed 's/ //g')

echo "PVC detectado $pvc_name"
./mount-pvc-for-debugging.sh $pvc_name

