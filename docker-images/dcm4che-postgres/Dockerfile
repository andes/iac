FROM dcm4che/postgres-dcm4chee:13.1-23

FROM registry.developers.crunchydata.com/crunchydata/crunchy-postgres:centos7-12.2-4.2.2


COPY --from=0 /sql /sql
COPY --from=0 /docker-entrypoint-initdb.d /docker-entrypoint-initdb.d/
COPY --from=0 /usr/bin/create-tables /usr/bin/create-tables 
COPY --from=0 /usr/bin/drop-tables /usr/bin/drop-tables 
COPY --from=0 /usr/bin/dump /usr/bin/dump 
COPY --from=0 /usr/bin/sql /usr/bin/sql 
COPY --from=0 /usr/bin/update-schema /usr/bin/update-schema 

COPY 99_user_privileges.sql /docker-entrypoint-initdb.d/ 
COPY start.sh /opt/cpm/bin/start.sh
