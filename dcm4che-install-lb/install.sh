#!/bin/sh
LB_FOLDER="lb_files"

cp cert_updater/*.sh $LB_FOLDER/
cp -R cert_updater/template $LB_FOLDER/
cp cert_updater/README.md $LB_FOLDER/README_CERT_UPDATER.md
mkdir $LB_FOLDER/certs
rm -Rf cert_updater

cd $LB_FOLDER
echo "Configuración del Load Balancer..."
bash generate-conf.sh

echo "LB instalado en $LB_FOLDER"
echo "Pasos: "
echo "  - Copiar kubeconfig del cluster en carpeta $LB_FOLDER"
echo "  - Copiar los certificados (fullchain.pem y privkey.pem) en $LB_FOLDER/certs"
echo "  - Iniciar el LB ./start-lb"
echo " \n\n Para actualizar certificados..."
echo " Copiar nuevos certificados en $LB_FOLDER/certs y correr el script ./update-certs.sh"
