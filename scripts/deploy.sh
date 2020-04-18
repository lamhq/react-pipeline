#!/bin/bash

export IMAGE=lamhq/restpip:latest

docker build -t ${IMAGE} .

echo ${DOCKER_HUB_PASSWORD} | docker login -u ${DOCKER_HUB_USER} --password-stdin

docker push ${IMAGE}
