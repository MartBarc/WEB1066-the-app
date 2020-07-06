#!/usr/bin/env bash
set -e

echo $DOCKER_LOGIN
# Docker build
./gradlew -p ./monolithic/ui packageToContainer
# Docker tag
docker tag zutherb/monolithic-shop:latest $DOCKER_LOGIN/web1066-the-app:latest
# Docker push
docker push $DOCKER_LOGIN/web1066-the-app:latest
