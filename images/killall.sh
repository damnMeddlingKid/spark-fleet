#!/bin/bash
# Delete all containers
sudo docker rm -f $(sudo docker ps -a -q)
# Delete all images
sudo docker rmi -f $(sudo docker images -q)
