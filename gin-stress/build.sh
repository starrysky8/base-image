#!/usr/bin/env bash

TAG="gin-stress:v0.1"
REGISTRY="172.16.12.130:11443/library"

cd "$(dirname "$0")" || exit

cd gin-stress

go build gin-stress.go

cd ..

docker build -t $TAG .
docker tag $TAG $REGISTRY/$TAG
docker push $REGISTRY/$TAG






