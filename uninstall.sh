#!/bin/bash

# Load all environment variables from the .env file
source .env

# Remove the cloned repositories using the directory names from the .env file
echo "Removing cloned repositories..."
rm -rf $FRONTEND_DIR
rm -rf $BACKEND_DIR