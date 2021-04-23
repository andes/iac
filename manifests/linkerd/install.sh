#!/bin/sh

set -e

curl -sL run.linkerd.io/install | sh

linkerd check --pre

linkerd install | kubectl apply -f -

linkerd viz install | kubectl apply -f -
