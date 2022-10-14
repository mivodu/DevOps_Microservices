#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build \
    --build-arg HTTP_PROXY="http://192.168.56.1:3128" \
    --build-arg HTTPS_PROXY="http://192.168.56.1:3128" \
    -t udacity-mlm \
    .

# Step 2: 
# List docker images
docker images --all

# Step 3: 
# Run flask app
docker run \
    -it \
    --name udacity-machine-learning-microservice \
    -p 8000:80 \
    udacity-mlm
