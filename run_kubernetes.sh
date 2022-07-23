#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=silanka/ml_mcs_kub_image

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy kub-ml-app --image=silanka/ml_mcs_kub_image:latest

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/kub-ml-app-dc564fbb4-wk8ns --address 0.0.0.0 8000:80

