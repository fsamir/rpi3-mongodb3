#!/bin/bash

# Define variables
IMAGE_NAME="710895077843.dkr.ecr.us-east-1.amazonaws.com/inventmarine/rpi3-mongodb3"
TAG="dev-0.3"

# Build the Docker image
docker build --platform linux/arm -t $IMAGE_NAME:$TAG .

# Push the Docker image to Docker Hub
docker push $IMAGE_NAME:$TAG