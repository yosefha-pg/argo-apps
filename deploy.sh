#!/bin/bash -eu
#set -x

ENV_NAME=$1
PROJECT=$2

kubectl apply -f <(helm template --set envName=$ENV_NAME --set project=$PROJECT charts/envs/)
