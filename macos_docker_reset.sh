#!/bin/sh

# Stops all running Docker containers
docker stop $(docker ps -aq)

# Remove all containers
docker rm -f $(docker ps -aq)

# Remove all Docker images
docker rmi -f $(docker images)

# Remove all Docker volumes
docker volume rm $(docker volume ls)

# Clean up everything safely
docker system prune -a --volumes
