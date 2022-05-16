#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
docker build --tag=micro-app .

# Step 2: 
docker images

# Step 3: 
 docker run -it --rm -p 8000:80 --name my-micro-app micro-app 
