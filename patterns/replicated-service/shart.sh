#!/usr/bin/env bash

set -ex

kubectl create -f dictionary-deploy.yml
kubectl create -f dictionary-service.yml
