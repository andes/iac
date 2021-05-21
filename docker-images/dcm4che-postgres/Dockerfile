# FROM dcm4che/postgres-dcm4chee:13.1-23
# COPY docker-entrypoint-initdb.d docker-entrypoint-initdb.d
# COPY /sql /sql
ENV DCM4CHE_VERSION=13.1-23

FROM registry.developers.crunchydata.com/crunchydata/crunchy-postgres:centos7-12.2-4.2.2

COPY --from=dcm4che/postgres-dcm4chee:${DCM4CHE_VERSION}/sql /sql
COPY --from=dcm4che/postgres-dcm4chee:${DCM4CHE_VERSION}/docker-entrypoint-initdb.d /docker-entrypoint-initdb.d/
COPY 99_user_privileges.sql /docker-entrypoint-initdb.d/ 
COPY --from=dcm4che/postgres-dcm4chee:${DCM4CHE_VERSION}/usr/bin/create-tables /usr/bin/create-tables 
COPY --from=dcm4che/postgres-dcm4chee:${DCM4CHE_VERSION}/usr/bin/drop-tables /usr/bin/drop-tables 
COPY --from=dcm4che/postgres-dcm4chee:${DCM4CHE_VERSION}/usr/bin/dump /usr/bin/dump 
COPY --from=dcm4che/postgres-dcm4chee:${DCM4CHE_VERSION}/usr/bin/sql /usr/bin/sql 
COPY --from=dcm4che/postgres-dcm4chee:${DCM4CHE_VERSION}/usr/bin/update-schema /usr/bin/update-schema 
COPY start.sh /opt/cpm/bin/start.sh
