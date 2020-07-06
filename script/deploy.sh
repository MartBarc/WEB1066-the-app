#!/usr/bin/env bash
set -e

echo "{$DOCKER_LOGIN}"
./gradlew -p ./monolithic/ui packageToContainer --debug
docker tag zutherb/monolithic-shop:latest $DOCKER_LOGIN/web1066-the-app:latest --debug
docker push $DOCKER_LOGIN/web1066-the-app:latest --debug
