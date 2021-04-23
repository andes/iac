#/bin/sh

if [ "$#" -ne 6 ]; then
    echo "parametros incorrectos"
    echo "./install '<namespace>' '<dominio del ingress>' '<carpeta con archivos key>' '<carpeta con los certificados web>' <carpeta de configuracion>' '<mongodb uri>'"
    echo "archivos key: charts-token.json, last.app.json, mongodb-charts.key, stitch-migrations.json"
    echo "certificados web: fullchain.pem, privkey.pem"
    echo "archivos de configuracion: stitch-config.template.json, stitch-config.json"
    exit;
fi


export NAMESPACE=$1
export DOMAIN=$2
export KEYS_FOLDER=$3
export CERTS_FOLDER=$4
export CONFIG_FOLDER=$5
export CHARTS_MONGODB_URI=$6

envsubst < namespace.yml | kubectl apply -f -

kubectl create secret generic -n $NAMESPACE mongodb-charts-keys --from-file=charts-tokens.json=$KEYS_FOLDER/charts-tokens.json --from-file=last.app.json=$KEYS_FOLDER/last.app.json --from-file=mongodb-charts.key=$KEYS_FOLDER/mongodb-charts.key --from-file=stitch-migrations.json=$KEYS_FOLDER/stitch-migrations.json

kubectl create secret generic -n $NAMESPACE mongodb-charts-certs --from-file=fullchain.pem=$CERTS_FOLDER/fullchain.pem --from-file=privkey.pem=$CERTS_FOLDER/privkey.pem

kubectl create secret generic -n $NAMESPACE mongodb-charts-uri --from-literal=CHARTS_MONGODB_URI=$CHARTS_MONGODB_URI
kubectl create configmap -n $NAMESPACE mongodb-charts-config --from-file=stitch-config.template.json=$CONFIG_FOLDER/stitch-config.template.json 
#--from-file=stitch-config.json=$CONFIG_FOLDER/stitch-config.json


envsubst < pvc.yml | kubectl apply -f -
envsubst < deployment.yml | kubectl apply -f -
envsubst < service.yml | kubectl apply -f -
envsubst < ingress.yml | kubectl apply -f -




