#!/bin/bash
echo "Pulling the latest Docker images..."
sudo docker-compose pull

# Stop and remove existing containers
echo "Stopping and removing old containers..."
sudo docker-compose down

# Start new containers with the updated image
echo "Starting new containers..."
sudo docker-compose up -d
