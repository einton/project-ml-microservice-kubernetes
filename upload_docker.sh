#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=einton/micro-app

# Step 2:  
# Authenticate & tag
cat ~/my_password.txt | docker login --username einton --password-stdin
docker image tag micro-app:latest $dockerpath:latest
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath