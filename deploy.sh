#!/bin/bash -e
#set -x

ENV_NAME=$1
PROJECT=$2

if [[ -z $ENV_NAME || -z $PROJECT ]]; then 
    echo Usage: ./deploy.sh ENV_NAME PROJECT
    exit 1 
fi

set -u

kubectl apply -f <(helm template --set envName=$ENV_NAME --set project=$PROJECT charts/envs/)
