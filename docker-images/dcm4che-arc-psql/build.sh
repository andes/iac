#!/bin/sh

docker build --no-cache  -t andesnqn/dcm4chee-arc-psql:5.24.1-secure .
docker push andesnqn/dcm4chee-arc-psql:5.24.1-secure
