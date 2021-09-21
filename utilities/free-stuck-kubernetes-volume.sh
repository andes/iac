#!/bin/sh

if [ "$#" -ne 2 ]; then
  echo "free-stuck-kubernetes-volume.sh <nombre del pod> <usuario de ssh para ingresar a los nodos>"
  exit 1
fi

echo "Contraseña de $2"
read -s pwd
prevSSHPASS=$SSHPASS
export SSHPASS=$pwd

pvc_pattern='"(pvc-[a-z0-9\-]+)"'
pod_data=$(kubectl describe pod $1)
[[ $pod_data =~  $pvc_pattern ]]
stucked_pvc=${BASH_REMATCH[1]}

workers_nodes=$(kubectl get nodes -o wide | grep worker | awk '{print $7}')

# Show what I'm going to do
echo 'Buscando y desmontando disco en los nodos con el comando...'
# echo $workers_nodes | tr " " "\n" | xargs -I % bash -c 'echo "echo <pwd> | sshpass -e ssh '$2'@%  mount | grep '$stucked_pvc' | cut -d\  -f 3 | xargs -I @ sh -c  "echo <pwd> | sudo -S umount @""'

# Do it
echo $stucked_pvc
echo $workers_nodes | tr " " "\n" | xargs -I % bash -c "echo $SSHPASS | sshpass -e ssh $2@%  'mount | grep $stucked_pvc | cut -d\  -f 3 | xargs -I@ sh -c \"echo $SSHPASS | sudo -S umount @ \" '"


export SSHPASS=$prevSSHPASS
