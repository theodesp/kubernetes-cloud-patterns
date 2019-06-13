#!/usr/bin/env bash

set -ex

docker build -t myhtop .
APP_ID=$(docker run -d alpine:latest /bin/sh -c "sleep 10000")
docker run --pid=container:${APP_ID} -p 8080:8080 brendanburns/topz:db0fa58 /server --addr=0.0.0.0:8080

