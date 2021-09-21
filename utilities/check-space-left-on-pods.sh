
kubectl exec -n dcm4che dcm4che-pacs-0 -- df -h | grep /dev/sd | sed s/%//g | awk '{if ($5 > 70) {print $1, $5}}'
