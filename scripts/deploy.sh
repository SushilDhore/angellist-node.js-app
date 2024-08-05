#!/bin/bash

# Get the latest image tag (modify this command based on your strategy for identifying the latest image)
LATEST_TAG=$(curl -s "https://hub.docker.com/v2/repositories/sushil26/node.js-app-anglelist/tags?page_size=1" | jq -r '.results[0].name')

# Ensure the latest tag is not empty
if [ -z "$LATEST_TAG" ]; then
  echo "Error: Unable to fetch the latest tag from Docker Hub."
  exit 1
fi

# Pull the latest image
echo "Pulling the latest image: sushil26/node.js-app-anglelist:$LATEST_TAG"
sudo docker pull sushil26/node.js-app-anglelist:$LATEST_TAG

# Stop and remove the old container if it exists
echo "Stopping and removing old containers..."
sudo docker-compose down

# Ensure the docker-compose.yml file is correctly set to use the 'latest' tag
echo "Starting new containers..."
sudo docker-compose up -d

# "Keep this script on server"
