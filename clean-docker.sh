#!/usr/bin/env bash
# stop all processes
docker stop $(docker ps -aq)

# remove all containers
docker rm $(docker ps -aq)

# remove all images
docker rmi $(docker images -aq)

# Remove all volumes
docker volume rm $(docker volume ls -qf)

# Your installation should now be all fresh and clean.

# The following commands should not output any items:
docker ps -a
docker images -a
docker volume ls

# The following command show only show the default networks:
docker network ls