#!/usr/bin/env bash
# This tags and uploads an image to Docker Hub

#Assumes this is built
image_name="python-hello-world"
tag_version=1.0
#docker build --tag=app .
dockerpath="crgv/${image_name}:${tag_version}"

# Authenticate & Tag
echo "Docker ID and Image: $dockerpath"
docker login &&\
docker image tag app $dockerpath
# Push Image
docker image push $dockerpath