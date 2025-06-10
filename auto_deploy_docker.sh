#!/bin/bash

# What it does:
# - Pulls the latest version of your Docker image
# - Stops and removes the running container (if any)
# - Deploys a fresh instance

IMAGE_NAME="your-image-name:latest"
CONTAINER_NAME="my-app"

echo "🐳 Pulling latest image: $IMAGE_NAME"
docker pull $IMAGE_NAME

echo "🛑 Stopping and removing old container (if exists)..."
docker stop $CONTAINER_NAME 2>/dev/null
docker rm $CONTAINER_NAME 2>/dev/null

echo "🚀 Starting new container..."
docker run -d --name $CONTAINER_NAME -p 80:80 $IMAGE_NAME

echo "✅ Deployment complete."