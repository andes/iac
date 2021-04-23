#/bin/sh

if [ "$#" -ne 1 ]; then
    echo "parametros incorrectos"
    echo "./uninstall '<namespace>' "
    exit;
fi


export NAMESPACE=$1

envsubst < deployment.yml | kubectl delete -f -
envsubst < pvc.yml | kubectl delete -f -
envsubst < service.yml | kubectl delete -f -
envsubst < ingress.yml | kubectl delete -f -

kubectl delete secret -n $NAMESPACE mongodb-charts-keys 
kubectl delete secret -n $NAMESPACE mongodb-charts-certs 
kubectl delete secret -n $NAMESPACE mongodb-charts-uri
kubectl delete configmap -n $NAMESPACE mongodb-charts-config 

# envsubst < namespace.yml | kubectl delete -f -


