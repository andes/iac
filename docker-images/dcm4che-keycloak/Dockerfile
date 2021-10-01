# image: andesnqn/dcm4che-keycloak
ARG TAG=15.0.0
FROM dcm4che/keycloak:$TAG

COPY setenv.sh /

COPY ./clients_conf /clients_conf
COPY postStart.sh /
COPY postStartScript.sh /
COPY postStartAfter.sh /
