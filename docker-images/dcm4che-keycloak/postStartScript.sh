#!/bin/bash
#set -e

echo "Script: postStartScript.sh - Status: start"

# File to check if this script was already run - Remove this file to run this script again
FILE=/opt/keycloak/standalone/configuration/CLIENTS_IMPORTED

if test -f "$FILE"; then
    echo "Nothing to do - already run before"
    exit 0;
fi

echo "Waiting for keycloak server to start"

# Ping keycloak to check if it's up
STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://$(hostname -i):8880)

# Wait for keycloak to be up and running
while [ $STATUS -ne 200 ]
do
    sleep 5s
    STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://$(hostname -i):8880)
done

echo "Logging in"

REALM=master
#REALM=dcm4che
# Login with keycloak client
/opt/keycloak/bin/kcadm.sh config credentials --server http://$(hostname -i):8880/auth --realm $REALM --user $KEYCLOAK_USER --password $KEYCLOAK_PASSWORD
#/opt/keycloak/bin/kcadm.sh config credentials --server http://$(hostname -i):8880/auth --realm $REALM --user admin --password admin
REALM=dcm4che
# Change admin password if it's necesary
if [ "$KEYCLOAK_PASSWORD" != "" ]; then
     echo "Setting new admin password"
     /opt/keycloak/bin/kcadm.sh set-password -r $REALM --username admin --new-password $KEYCLOAK_PASSWORD
fi
echo "Preparing and adding clients"
# Prepare and import dcm4chee-arc-ui client
sed 's/{{DOMAIN}}/'$GLOBAL_DOMAIN'/g' /clients_conf/dcm4chee-arc-ui.json.tpl > /clients_conf/dcm4chee-arc-ui.json
/opt/keycloak/bin/kcadm.sh create clients -r $REALM -f /clients_conf/dcm4chee-arc-ui.json
# Prepare and import ohif client
sed 's/{{DOMAIN}}/'$GLOBAL_DOMAIN'/g' /clients_conf/ohif.json.tpl > /clients_conf/ohif.json
/opt/keycloak/bin/kcadm.sh create clients -r $REALM -f /clients_conf/ohif.json
# Prepare and import wildfly-console client
sed 's/{{DOMAIN}}/'$GLOBAL_DOMAIN'/g' /clients_conf/wildfly-console.json.tpl > /clients_conf/wildfly-console.json
/opt/keycloak/bin/kcadm.sh create clients -r $REALM -f /clients_conf/wildfly-console.json
# Prepare and import kibana client (this one uses confidential login => it provides secret)
sed 's/{{DOMAIN}}/'$GLOBAL_DOMAIN'/g' /clients_conf/kibana.json.tpl > /clients_conf/kibana.tmp
sed 's/{{KIBANA_CLIENT_SECRET}}/'$KIBANA_CLIENT_SECRET'/g' /clients_conf/kibana.tmp > /clients_conf/kibana.json
sed -i 's/{{ANDES_SECRET}}/'$ANDES_SECRET'/g' /clients_conf/andes.json 
/opt/keycloak/bin/kcadm.sh create clients -r $REALM -f /clients_conf/kibana.json
rm /clients_conf/kibana.tmp

echo "Adding andes client"

# Import andes client
# /opt/keycloak/bin/kcadm.sh create clients -r $REALM -s clientId=andes -s enabled=true -s clientAuthenticatorType=client-secret -s secret=$ANDES_SECRET
/opt/keycloak/bin/kcadm.sh create clients -r $REALM -f /clients_conf/andes.json

echo "Creating keycloak regular user"
/opt/keycloak/bin/kcadm.sh create users -r $REALM -s username=$KEYCLOAK_REGULAR_USER -s enabled=true
/opt/keycloak/bin/kcadm.sh set-password -r $REALM --username $KEYCLOAK_REGULAR_USER --new-password $KEYCLOAK_REGULAR_PASSWORD
echo "Removing unnecesary roles"
/opt/keycloak/bin/kcadm.sh remove-roles --uusername $KEYCLOAK_REGULAR_USER --rolename uma_authorization
/opt/keycloak/bin/kcadm.sh remove-roles --uusername $KEYCLOAK_REGULAR_USER --rolename offline_access
echo "Creating user role"
/opt/keycloak/bin/kcadm.sh create roles -r $REALM -s name=user

# echo "Creating keycloak API user"
# /opt/keycloak/bin/kcadm.sh create users -r $REALM -s username=$KEYCLOAK_API_USER -s enabled=true
# /opt/keycloak/bin/kcadm.sh set-password -r $REALM --username $KEYCLOAK_API_USER --new-password $KEYCLOAK_API_PASSWORD


echo "Adding user role to service account"
/opt/keycloak/bin/kcadm.sh add-roles --uusername service-account-andes --rolename user -r $REALM
# /opt/keycloak/bin/kcadm.sh add-roles --uusername andes --rolename user 
# /opt/keycloak/bin/kcadm.sh remove-roles --uusername andes --rolename uma_authorization
# /opt/keycloak/bin/kcadm.sh remove-roles --uusername andes --rolename offline_access
# /opt/keycloak/bin/kcadm.sh add-roles --uusername service-account-andes --rolename user -r $REALM

touch $FILE

echo "Script: postStartScript.sh - Status: end"
