#!/bin/bash

#set -e

# File to check if this script was already run - Remove this file to run this script again
FILE=/opt/keycloak/standalone/configuration/CLIENTS_IMPORTED

echo "Step 1"
REALM=dcm4che

if test -f "$FILE"; then
    echo "Nothing to do - already run before"
    exit 0;
fi

echo "Step 2"

# Ping keycloak to check if it's up
STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://$(hostname -i):8880)

echo "Step 3"

# Wait for keycloak to be up and running
while [ $STATUS -ne 200 ]
do
    sleep 5s
    STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://$(hostname -i):8880)
done

echo "Step 4"
echo "Adding custom clients"



# Login with keycloak client
#/opt/keycloak/bin/kcadm.sh config credentials --server http://$(hostname -i):8880/auth --realm dcm4che --user $KEYCLOAK_USER --password $KEYCLOAK_PASSWORD
/opt/keycloak/bin/kcadm.sh config credentials --server http://$(hostname -i):8880/auth --realm $REALM --user admin --password admin
echo "Step 5"
# Change admin password if it's necesary
if [ "$KEYCLOAK_PASSWORD" != "admin" ]; then
    echo "Setting new admin password"
    /opt/keycloak/bin/kcadm.sh set-password -r $REALM --username admin --new-password $KEYCLOAK_PASSWORD
fi
echo "Step 6"
# Prepare and import dcm4chee-arc-ui client
sed 's/{{DOMAIN}}/'$GLOBAL_DOMAIN'/g' /clients_conf/dcm4chee-arc-ui.json.tpl > /clients_conf/dcm4chee-arc-ui.json
/opt/keycloak/bin/kcadm.sh create clients -r $REALM -f /clients_conf/dcm4chee-arc-ui.json
echo "Step 7"
# Prepare and import ohif client
sed 's/{{DOMAIN}}/'$GLOBAL_DOMAIN'/g' /clients_conf/ohif.json.tpl > /clients_conf/ohif.json
/opt/keycloak/bin/kcadm.sh create clients -r $REALM -f /clients_conf/ohif.json
echo "Step 8"
# Prepare and import wildfly-console client
sed 's/{{DOMAIN}}/'$GLOBAL_DOMAIN'/g' /clients_conf/wildfly-console.json.tpl > /clients_conf/wildfly-console.json
/opt/keycloak/bin/kcadm.sh create clients -r $REALM -f /clients_conf/wildfly-console.json
echo "Step 9"
# Prepare and import kibana client (this one uses confidential login => it provides secret)
sed 's/{{DOMAIN}}/'$GLOBAL_DOMAIN'/g' /clients_conf/kibana.json.tpl > /clients_conf/kibana.tmp
sed 's/{{KIBANA_CLIENT_SECRET}}/'$KIBANA_CLIENT_SECRET'/g' /clients_conf/kibana.tmp > /clients_conf/kibana.json
/opt/keycloak/bin/kcadm.sh create clients -r $REALM -f /clients_conf/kibana.json
rm /clients_conf/kibana.tmp
echo "Step 10"
# Import andes client
/opt/keycloak/bin/kcadm.sh create clients -r $REALM -s clientId=andes -s enabled=true -s clientAuthenticatorType=client-secret -s secret=$ANDES_SECRET
/opt/keycloak/bin/kcadm.sh create clients -r $REALM -f /clients_conf/andes.json
/opt/keycloak/bin/kcadm.sh add-roles --uusername service-account-andes --rolename user -r $REALM
echo "Step 11"
echo "Creating keycloak regular user"
/opt/keycloak/bin/kcadm.sh create users -r $REALM -s username=$KEYCLOAK_REGULAR_USER -s enabled=true
/opt/keycloak/bin/kcadm.sh set-password -r $REALM --username $KEYCLOAK_REGULAR_USER --new-password $KEYCLOAK_REGULAR_PASSWORD
echo "Step 12"
# echo "Creating keycloak API user"
# /opt/keycloak/bin/kcadm.sh create users -r $REALM -s username=$KEYCLOAK_API_USER -s enabled=true
# /opt/keycloak/bin/kcadm.sh set-password -r $REALM --username $KEYCLOAK_API_USER --new-password $KEYCLOAK_API_PASSWORD

touch $FILE