#!/bin/bash

# Load environment variables from the .env file
source .env

# Start the docker containers using docker run
printf "\nStarting Docker containers...\n"
docker run -d -p $FRONTEND_HOST_PORT:$FRONTEND_CONTAINER_PORT --name $FRONTEND_CONTAINER_NAME $FRONTEND_IMAGE_NAME
docker run -d --name $BACKEND_CONTAINER_NAME $BACKEND_IMAGE_NAME