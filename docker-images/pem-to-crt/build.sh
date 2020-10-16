#!/bin/sh

docker build --no-cache  -t andesnqn/dcm4che-init-pem-to-cert:1.0.0 .
docker push andesnqn/dcm4che-init-pem-to-cert:1.0.0