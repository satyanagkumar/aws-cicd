#!/bin/bash
set -e

# Fetch the container ID of the running container
containerid=$(docker ps | awk '{print $1}')

# Check if container ID was found and stop and remove it
if [ -n "$containerid" ]; then
    docker rm -f $containerid
else
    echo "No running container found"
fi
