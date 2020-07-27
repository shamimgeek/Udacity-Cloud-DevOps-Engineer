#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="shamim009/udacity-devops"

# Step 2:  
# Authenticate & tag
# export DOCKER_LOGIN_PASS=xxxxxxxx
echo "Docker ID and Image: $dockerpath"
echo ${DOCKER_LOGIN_PASS} | docker login --username shamim009 --password-stdin
docker image tag udacity-devops:latest $dockerpath


# Step 3:
# Push image to a docker repository
docker image push $dockerpath