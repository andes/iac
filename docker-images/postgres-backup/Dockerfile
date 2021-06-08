# image: andesnqn/backup-postgres
FROM alpine

ENV BACKUP_FOLDER=/backup
ENV BACKUP_FILENAME=dcm4che

ENV POSTGRES_SERVER=1.1.1.1
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASS=root
ENV POSTGRES_PORT=5432

ENV SSH_SERVER=1.1.1.2
ENV SSH_USER=root
ENV SSH_PASS=root
ENV SSH_DEST_FOLDER=/home/root/


RUN apk add --no-cache postgresql-client openssh-client sshpass bzip2
COPY backup.sh /backup.sh
COPY rotate.sh /rotate.sh

CMD /backup.sh



