#!/bin/sh

helm install test-slapd ./dcm4che-slapd
helm install test-keycloak ./dcm4che-keycloak
helm install test-postgres ./dcm4che-postgres
helm install test-pacs ./dcm4che-pacs
