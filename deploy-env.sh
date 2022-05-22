#!/bin/bash -eu
#set -x

ENV_NAME=$1

helm template --set envName=$ENV_NAME charts/enviroments/ | kubectl apply -f -
