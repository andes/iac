#!/bin/sh

#set -e

mkdir -p $BACKUP_FOLDER


pg_dump --dbname=postgresql://$POSTGRES_USER:$POSTGRES_PASS@$POSTGRES_SERVER:$POSTGRES_PORT/pacsdb > $BACKUP_FOLDER/$BACKUP_FILENAME.pacsdb.dump
pg_dump --dbname=postgresql://$POSTGRES_USER:$POSTGRES_PASS@$POSTGRES_SERVER:$POSTGRES_PORT/postgres > $BACKUP_FOLDER/$BACKUP_FILENAME.postgres.dump

bzip2 $BACKUP_FOLDER/$BACKUP_FILENAME.*.dump

sshpass -p $SSH_PASS ssh -o StrictHostKeyChecking=no $SSH_USER@$SSH_SERVER 'bash -s' < rotate.sh $BACKUP_FILENAME.pacsdb.dump $SSH_DEST_FOLDER
sshpass -p $SSH_PASS ssh -o StrictHostKeyChecking=no $SSH_USER@$SSH_SERVER 'bash -s' < rotate.sh $BACKUP_FILENAME.postgres.dump $SSH_DEST_FOLDER

sshpass -p $SSH_PASS scp -o StrictHostKeyChecking=no $BACKUP_FOLDER/$BACKUP_FILENAME.*.bz2 $SSH_USER@$SSH_SERVER:$SSH_DEST_FOLDER

