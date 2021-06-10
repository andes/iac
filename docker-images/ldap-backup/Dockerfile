# image: andesnqn/backup-ldap
FROM alpine

ENV BACKUP_FOLDER=/backup
ENV BACKUP_FILENAME=backup_ldap

ENV LDAP_SERVER=1.1.1.1
ENV SSH_SERVER=1.1.1.2
ENV SSH_USER=root
ENV SSH_PASS=root
ENV SSH_DEST_FOLDER=/


RUN apk add --no-cache openldap-clients openssh-client sshpass bzip2
COPY backup.sh /backup.sh
COPY rotate.sh /rotate.sh



CMD /backup.sh



