#!/bin/sh

#set -e

mkdir -p $BACKUP_FOLDER

ldapsearch -x -h $LDAP_SERVER -b 'dc=dcm4che,dc=org' "(objectclass=*)" > $BACKUP_FOLDER/$BACKUP_FILENAME

bzip2 $BACKUP_FOLDER/$BACKUP_FILENAME

sshpass -p $SSH_PASS ssh -o StrictHostKeyChecking=no $SSH_USER@$SSH_SERVER:$SSH_DEST_FOLDER 'bash -s' < rotate.sh $BACKUP_FILENAME $SSH_DEST_FOLDER
sshpass -p $SSH_PASS scp -o StrictHostKeyChecking=no $BACKUP_FOLDER/$BACKUP_FILENAME.bz2 $SSH_USER@$SSH_SERVER:$SSH_DEST_FOLDER

