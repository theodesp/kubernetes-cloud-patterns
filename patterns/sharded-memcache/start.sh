#!/usr/bin/env bash

set -ex

kubectl create -f memcached-deploy.yml
kubectl create -f memcached-service.yml
kubectl create configmap --from-file=nutcracker.yaml twem-config
