FROM dcm4che/postgres-dcm4chee:13.1-23 as pg-dcm4che

# FROM registry.developers.crunchydata.com/crunchydata/crunchy-postgres:centos7-12.2-4.2.2


# COPY --from=pg-dcm4che /sql /sql
# COPY --from=pg-dcm4che /docker-entrypoint-initdb.d /docker-entrypoint-initdb.d/
# COPY --from=pg-dcm4che /usr/bin/create-tables /usr/bin/create-tables 
# COPY --from=pg-dcm4che /usr/bin/drop-tables /usr/bin/drop-tables 
# COPY --from=pg-dcm4che /usr/bin/dump /usr/bin/dump 
# COPY --from=pg-dcm4che /usr/bin/sql /usr/bin/sql 
# COPY --from=pg-dcm4che /usr/bin/update-schema /usr/bin/update-schema 

COPY 99_user_privileges.sql /docker-entrypoint-initdb.d/ 
COPY start.sh /opt/cpm/bin/start.sh
