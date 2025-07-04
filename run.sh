#!/bin/bash

# Installments
source install.sh

# Building Docker image
docker build -t flask_app:latest .

# Running Docker container
# Watching for container exit status to monitor the application
if ! docker run -d -p 8000:8080 flask_app; then
    echo "Deployment failed!"
    exit 1
else
    echo "The application has been deployed. Check http://localhost:8000"
fi