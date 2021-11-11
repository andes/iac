#!/bin/sh

helm uninstall test-slapd
helm uninstall test-keycloak
helm uninstall test-postgres
helm uninstall test-pacs
