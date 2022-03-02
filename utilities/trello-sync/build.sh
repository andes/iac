#!/bin/sh

docker build -t orlandobrea/sync-trello:1.0.1 .
docker push orlandobrea/sync-trello:1.0.1
