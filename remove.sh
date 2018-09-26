#!/bin/bash 
     
docker ps -a
docker stop wordpress
docker rm wordpress
docker stop wordpressdb
docker rm wordpressdb

# Delete files and folders
rm -rf site1
# Delete files and folders
rm -rf db1

docker ps -a
read -p "Completed in 10 Seconds...." -t 10