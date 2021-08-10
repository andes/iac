#!/bin/sh


kubectl delete -f https://raw.githubusercontent.com/kubernetes-sigs/vsphere-csi-driver/release-2.1/manifests/v2.1.0/vsphere-7.0/deploy/vsphere-csi-node-ds.yaml

kubectl delete -f https://raw.githubusercontent.com/kubernetes-sigs/vsphere-csi-driver/release-2.1/manifests/v2.1.0/vsphere-7.0/deploy/vsphere-csi-controller-deployment.yaml

kubectl delete -f https://raw.githubusercontent.com/kubernetes-sigs/vsphere-csi-driver/release-2.1/manifests/v2.1.0/vsphere-7.0/rbac/vsphere-csi-controller-rbac.yaml


