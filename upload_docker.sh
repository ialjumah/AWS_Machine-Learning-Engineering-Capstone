#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
 dockerpath=ibdiko/idt

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u ibdiko

#docker tag col ibrahim/udacity[:latest]
#docker commit col ibrahim/udacity[:latest]

# Step 3:
# Push image to a docker repository\
docker tag idt $dockerpath:latest
docker push $dockerpath:latest
