#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=einton/micro-app

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy micro-app --image=$dockerpath


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward $(kubectl get pods -o custom-columns=NAME:metadata.name --no-headers) --address 0.0.0.0 8000:80

