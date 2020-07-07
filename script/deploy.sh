#!/usr/bin/env bash
set -e

docker tag zutherb/monolithic-shop:latest $DOCKER_LOGIN/web1066-the-app:latest
docker push $DOCKER_LOGIN/web1066-the-app:latest
