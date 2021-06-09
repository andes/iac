#!/bin/sh

docker build -t andesnqn/backup-postgres:1.2 .
docker push andesnqn/backup-postgres:1.2
