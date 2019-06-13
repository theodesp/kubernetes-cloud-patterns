#!/usr/bin/env bash

set -ex

kubectl create configmap varnish-config --from-file=default.vcl
kubectl create -f varnish-deploy.yml
kubectl create -f varnish-service.yml

# SSL
kubectl create configmap nginx-conf --from-file=nginx.conf
kubectl create -f nginx-deploy.yml
kubectl create -f nginx-service.yml