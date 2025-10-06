#!/bin/bash

# Load environment variables from the .env file
source .env

# Stop the docker containers using docker stop
printf "\nStopping Docker containers...\n"
docker stop $FRONTEND_CONTAINER_NAME
docker stop $BACKEND_CONTAINER_NAME

# Remove the docker containers using docker rm
printf "\nRemoving Docker containers...\n"
docker rm $FRONTEND_CONTAINER_NAME
docker rm $BACKEND_CONTAINER_NAME

# Print a completion message
printf "\nContainers stopped and removed successfully!\n"