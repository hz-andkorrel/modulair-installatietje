#!/bin/bash

# Load environment variables from the .env file
source .env

# Clone the repositories using the URLs from the .env file
git clone $FRONTEND_GITHUB_URL $FRONTEND_DIR
git clone $BACKEND_GITHUB_URL $BACKEND_DIR