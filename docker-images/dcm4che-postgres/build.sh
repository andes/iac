#!/bin/sh

docker build --no-cache -t andesnqn/postgres-dcm4chee:13.1-23 .
docker push andesnqn/postgres-dcm4chee:13.1-23
