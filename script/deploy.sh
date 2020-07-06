#!/usr/bin/env bash
set -e

echo "{$DOCKER_LOGIN}"
./gradlew -p ./monolithic/ui packageToContainer
docker tag zutherb/monolithic-shop:latest $DOCKER_LOGIN/web1066-the-app:latest
docker push $DOCKER_LOGIN/web1066-the-app:latest
