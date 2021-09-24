#!/bin/sh

if [ "$#" -ne 1 ]; then
    echo "Se esperaba la version de dcm4che-keycloak"
    exit;
fi

docker build -t andesnqn/dcm4che-keycloak:$1 --build-arg TAG=$1 .
docker push andesnqn/dcm4che-keycloak:$1
