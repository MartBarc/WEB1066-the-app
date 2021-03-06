#!/usr/bin/env bash
set -e
bash -c "echo \"${DOCKER_PASSWORD}\" | docker login --username \"${DOCKER_LOGIN}\" --password-stdin"

docker pull zutherb/monolithic-shop
docker tag zutherb/monolithic-shop:latest $DOCKER_LOGIN/web1066-the-app:latest
docker push $DOCKER_LOGIN/web1066-the-app:latest
