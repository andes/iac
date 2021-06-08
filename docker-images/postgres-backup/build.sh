#!/bin/sh

docker build -t andesnqn/backup-postgres:1.1 .
docker push andesnqn/backup-postgres:1.1
