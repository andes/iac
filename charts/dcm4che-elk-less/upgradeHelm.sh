#!/bin/sh

helm upgrade test-slapd ./dcm4che-slapd
helm upgrade test-keycloak ./dcm4che-keycloak
helm upgrade test-postgres ./dcm4che-postgres
helm upgrade test-pacs ./dcm4che-pacs
#helm upgrade test-gatekeeper ./dcm4che-gatekeeper
