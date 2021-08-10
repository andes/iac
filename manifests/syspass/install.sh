#/bin/sh

if [ "$#" -ne 5 ]; then
    echo "parametros incorrectos"
    echo "./install '<namespace>' '<dominio del ingress>' '<mysql-root-password>' '<archivo dump de base de datos>' '<carpeta con archivos de configuración>'"
    exit;
fi


export NAMESPACE=$1
export DOMAIN=$2
export MYSQL_ROOT_PASSWORD=$3
export MYSQL_DUMP_FILE=$4
export SYSPASS_CONFIG_FOLDER=$5

envsubst < namespace.yml | kubectl apply -f -

kubectl create secret generic -n $NAMESPACE syspass-mysql-root-password --from-literal=MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD
kubectl create secret generic -n $NAMESPACE syspass-mysql-dump --from-file=dump.sql=$MYSQL_DUMP_FILE

# Change database host to the service
dasel put string  -p xml -f $SYSPASS_CONFIG_FOLDER/config.xml "config.dbHost" "svc-syspass-mysql"
kubectl create secret generic -n $NAMESPACE syspass-config --from-file=config.xml=$SYSPASS_CONFIG_FOLDER/config.xml --from-file=key.pem=$SYSPASS_CONFIG_FOLDER/key.pem --from-file=pubkey.pem=$SYSPASS_CONFIG_FOLDER/pubkey.pem


envsubst < pvc-mysql.yml | kubectl apply -f -
envsubst < pvc-syspass.yml | kubectl apply -f -
envsubst < statefulset-mysql.yml | kubectl apply -f -
envsubst < deployment-syspass.yml | kubectl apply -f -
envsubst < service-mysql.yml | kubectl apply -f -
envsubst < service-syspass.yml | kubectl apply -f -
envsubst < ingress.yml | kubectl apply -f -

