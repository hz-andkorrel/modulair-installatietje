#!/bin/bash

# Load all environment variables from the .env file
source .env

# Remove the docker images using the image names from the .env file
printf "\nRemoving Docker images..."
docker rmi $FRONTEND_IMAGE_NAME
docker rmi $BACKEND_IMAGE_NAME

# Remove the cloned repositories using the directory names from the .env file
printf "\nRemoving cloned repositories..."
rm -rf $FRONTEND_DIR
rm -rf $BACKEND_DIR

# Print a completion message
printf "\nUninstallation complete!\n"