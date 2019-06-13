#!/usr/bin/env bash

set -ex

kubectl create -f redis-shard.yml
kubectl create -f redis-service.yml
kubectl create configmap --from-file=nutcracker.yaml
kubectl create -f ambassador.yml
