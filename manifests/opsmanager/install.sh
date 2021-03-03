#/bin/sh

if [ "$#" -ne 5 ]; then
    echo "parametros incorrectos"
    echo "./install '<nombre>' '<apellido>' '<usuario>' '<password>' '<dominio>'"
    echo "password debe contener letras, numeros y al menos un simbolo"
    exit;
fi

kubectl create namespace mongodb
kubectl apply -f https://raw.githubusercontent.com/mongodb/mongodb-enterprise-kubernetes/master/crds.yaml
kubectl apply -f https://raw.githubusercontent.com/mongodb/mongodb-enterprise-kubernetes/master/mongodb-enterprise.yaml

 kubectl create secret generic ops-manager-admin-secret  \
--from-literal=Username="$3" \
--from-literal=Password="$4" \
--from-literal=FirstName="$1" \
--from-literal=LastName="$2" -n mongodb


kubectl apply -f ops-manager.yml

export DOMAIN=$5
envsubst < ingress.yml | kubectl apply -f -

