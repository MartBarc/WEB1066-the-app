#!/usr/bin/env bash
set -e

# Docker login
./gradlew -p ./monolithic/ui packageToContainer
# Docker tag
docker tag zutherb/monolithic-shop:latest $DOCKER_LOGIN/web1066-the-app:latest
# Docker push 
docker push $DOCKER_LOGIN/monolithic-shop:latest