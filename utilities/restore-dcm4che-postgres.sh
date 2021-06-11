#!/bin/bash

if [ "$#" -ne 4 ]; then
  echo "Uso: restore-dcm4che-postgres.sh <host:port> <bz2 backup> <postgres password> <db>"
  echo "Se puede realizar una conexion por medio de port-forwarding en kubernetes al POD de Postgres"
  echo "Ejemplo: "
  echo "   kubectl port-forward svc/dcm4che-postgres 5432:5432"
  echo "(a partir del comando anterior se puede conectar al servidor de Postgress como localhost:5432)"
  exit 1
fi


INPUT_HOST_PORT=$1

HostPort=(${INPUT_HOST_PORT//\:/ })

if [ "${#HostPort[@]}" = 2 ]; then
  HOST=${HostPort[0]}
  PORT=${HostPort[1]}
else
  HOST="${HostPort[@]}"
  PORT=5432
fi

BACKUP_BZ2=$2
POSTGRES_PASSWORD=$3
DB=$4
BACKUP_FILE=$(echo $BACKUP_BZ2 | sed s/\.bz2//g)

echo "Esta operacion va restaurar el backup en el servidor ${1}."
echo "Presiona s para continuar"
read;

if [ "${REPLY}" != "s" ]; then
    echo "Cancelando operación"
    exit 0
fi

bunzip2 -k $BACKUP_BZ2


#set -e

# pg_restore -h $HOST -p $PORT -U postgres -d $DB -w -v $BACKUP_FILE
PGPASSWORD=$POSTGRES_PASSWORD psql -U postgres -h $HOST -p $PORT -d $DB < $BACKUP_FILE

rm $BACKUP_FILE
