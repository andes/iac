#!/bin/sh

#set -e

mkdir -p $BACKUP_FOLDER

# Backup DICOM, realm-management, users
echo "Backup dicom config"
ldapsearch -x -h $LDAP_SERVER -b 'cn=DICOM Configuration,dc=dcm4che,dc=org' "(objectclass=*)" > $BACKUP_FOLDER/$BACKUP_FILENAME.dicom.ldif

echo "Backup realm-management"
ldapsearch -x -h $LDAP_SERVER -b 'ou=realm-management,dc=dcm4che,dc=org' "(objectclass=*)" > $BACKUP_FOLDER/$BACKUP_FILENAME.realm-management.ldif

echo "Backup users"
ldapsearch -x -h $LDAP_SERVER -b 'ou=users,dc=dcm4che,dc=org' "(objectclass=*)" > $BACKUP_FOLDER/$BACKUP_FILENAME.users.ldif


# Tar and compress files
echo "Compressing"
tar -cf $BACKUP_FOLDER/$BACKUP_FILENAME.tar $BACKUP_FOLDER/$BACKUP_FILENAME.*.ldif
bzip2 $BACKUP_FOLDER/$BACKUP_FILENAME.tar

echo "Uploading"
# Rotate previous backups
sshpass -p $SSH_PASS ssh -o StrictHostKeyChecking=no $SSH_USER@$SSH_SERVER 'bash -s' < rotate.sh $BACKUP_FILENAME.tar $SSH_DEST_FOLDER
# Upload backup
sshpass -p $SSH_PASS scp -o StrictHostKeyChecking=no $BACKUP_FOLDER/$BACKUP_FILENAME.tar.bz2 $SSH_USER@$SSH_SERVER:$SSH_DEST_FOLDER

