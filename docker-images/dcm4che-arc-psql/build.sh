#!/bin/sh

docker build --no-cache  -t andesnqn/dcm4chee-arc-psql:5.23.0-secure .
docker push andesnqn/dcm4chee-arc-psql:5.23.0-secure
