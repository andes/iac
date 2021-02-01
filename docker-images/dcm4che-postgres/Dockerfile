# FROM dcm4che/postgres-dcm4chee:13.1-23
# COPY docker-entrypoint-initdb.d docker-entrypoint-initdb.d
# COPY /sql /sql

FROM registry.developers.crunchydata.com/crunchydata/crunchy-postgres:centos7-12.2-4.2.2

COPY --from=dcm4che/postgres-dcm4chee:13.1-23 /sql /sql
COPY --from=dcm4che/postgres-dcm4chee:13.1-23 /docker-entrypoint-initdb.d /docker-entrypoint-initdb.d/
COPY 99_user_privileges.sql /docker-entrypoint-initdb.d/ 
COPY --from=dcm4che/postgres-dcm4chee:13.1-23 usr/bin/create-tables /usr/bin/create-tables 
COPY --from=dcm4che/postgres-dcm4chee:13.1-23 usr/bin/drop-tables /usr/bin/drop-tables 
COPY --from=dcm4che/postgres-dcm4chee:13.1-23 usr/bin/dump /usr/bin/dump 
COPY --from=dcm4che/postgres-dcm4chee:13.1-23 usr/bin/sql /usr/bin/sql 
COPY --from=dcm4che/postgres-dcm4chee:13.1-23 usr/bin/update-schema /usr/bin/update-schema 
COPY start.sh /opt/cpm/bin/start.sh
