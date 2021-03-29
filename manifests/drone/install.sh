#/bin/sh

if [ "$#" -ne 2 ]; then
    echo "parametros incorrectos"
    echo "./install '<namespace>' '<dominio>'"
    exit;
fi


export NAMESPACE=$1
export DOMAIN=$2
envsubst < ingress.yml | kubectl apply -f -

