#!/bin/sh

docker build -t orlandobrea/test-kubernetes-client:0.1.1 .
docker push orlandobrea/test-kubernetes-client:0.1.1
