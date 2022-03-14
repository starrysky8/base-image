#!/usr/bin/env bash

TAG="ubuntu-py3:v0.1"
REGISTRY="starrysky8"

cd "$(dirname "$0")" || exit

docker build -t $TAG .
docker tag $TAG $REGISTRY/$TAG
docker push $REGISTRY/$TAG