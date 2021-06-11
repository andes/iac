#!/bin/bash

if [ "$#" -ne 3 ]; then
  echo "Uso: restore-dcm4che-ldap.sh <host:port> <bz2 backup> <ldap password>"
  echo "Se puede realizar una conexion por medio de port-forwarding en kubernetes al POD de LDAP"
  echo "Ejemplo: "
  echo "   kubectl port-forward svc/dcm4che-slapd 10389:389"
  echo "(a partir del comando anterior se puede conectar al servidor de LDAP como localhost:10389)"
  exit 1
fi

LDAP_SERVER=$1
BACKUP_BZ2=$2
LDAP_PASSWORD=$3
BACKUP_TAR=$(echo $BACKUP_BZ2 | sed s/\.bz2//g)

echo "Esta operacion va a ELIMINAR toda la información del servidor ${1}."
echo "Presiona s para continuar"
read;

if [ "${REPLY}" != "s" ]; then
    echo "Cancelando operación"
    exit 0
fi

bunzip2 -k $BACKUP_BZ2
tar -xf $BACKUP_TAR

# Ingreso a la carpeta backup o backups
if [ -d "./backup" ]; then
    cd backup
fi
if [ -d "./backups" ]; then
    cd backups
fi

#set -e

# Limpio el servidor de LDAP
ldapsearch -LLL -x -h $LDAP_SERVER -s one -b "dc=dcm4che,dc=org" "(objectclass=*)" -w $LDAP_PASSWORD dn  | awk -F": " '$1~/^\s*dn/{print $2}' >  listOfDNtoRemove.txt
ldapdelete -r -x -h $LDAP_SERVER -D 'cn=admin,dc=dcm4che,dc=org' -w $LDAP_PASSWORD -f listOfDNtoRemove.txt
rm listOfDNtoRemove.txt

# Restore
ldapadd -x -D "cn=admin,dc=dcm4che,dc=org" -h $LDAP_SERVER -w $LDAP_PASSWORD -f backup_ldap.users.ldif
ldapadd -x -D "cn=admin,dc=dcm4che,dc=org" -h $LDAP_SERVER -w $LDAP_PASSWORD -f backup_ldap.realm-management.ldif
ldapadd -x -D "cn=admin,dc=dcm4che,dc=org" -h $LDAP_SERVER -w $LDAP_PASSWORD -f backup_ldap.dicom.ldif

rm -Rf backups
rm -Rf backup
