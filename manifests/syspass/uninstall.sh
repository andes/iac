#/bin/sh

if [ "$#" -ne 1 ]; then
    echo "parametros incorrectos"
    echo "./uninstall '<namespace>' "
    exit;
fi


export NAMESPACE=$1


kubectl delete secret -n $NAMESPACE syspass-mysql-root-password
kubectl delete secret -n $NAMESPACE syspass-mysql-dump
kubectl delete secret -n $NAMESPACE syspass-config

envsubst < ingress.yml | kubectl delete -f -
envsubst < service-mysql.yml | kubectl delete -f -
envsubst < service-syspass.yml | kubectl delete -f -
envsubst < statefulset-mysql.yml | kubectl delete -f -
envsubst < deployment-syspass.yml | kubectl delete -f -
envsubst < pvc-mysql.yml | kubectl delete -f -
envsubst < pvc-syspass.yml | kubectl delete -f -

# envsubst < namespace.yml | kubectl delete -f -


