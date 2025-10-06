#!/bin/bash

# Load environment variables from the .env file
source .env

# Check whether git and docker are installed
for package in "${REQUIRED_PACKAGES[@]}"; do
    if ! command -v $pkg &> /dev/null
    then
        echo "$pkg could not be found, please install $pkg first."
        exit
    fi
done

# Clone the repositories using the URLs from the .env file
printf "\nCloning repositories..."
git clone $FRONTEND_GITHUB_URL $FRONTEND_DIR -b $FRONTEND_CURRENT_BRANCH
git clone $BACKEND_GITHUB_URL $BACKEND_DIR -b $BACKEND_CURRENT_BRANCH

# Create the docker containers using docker build
printf "\nBuilding Docker images..."
docker build -t $FRONTEND_IMAGE_NAME -f $FRONTEND_DIR/$FRONTEND_DOCKERFILE_NAME $FRONTEND_DIR
docker build -t $BACKEND_IMAGE_NAME -f $BACKEND_DIR/$BACKEND_DOCKERFILE_NAME $BACKEND_DIR