#!/bin/bash      
 
docker ps -a

docker start wordpressdb

docker start wordpress

docker ps -a

echo "open http://127.0.0.1:8080"

read -p "Completed in 10 Seconds...." -t 10