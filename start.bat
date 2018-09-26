#!/bin/bash      
 
docker ps -a
docker start wordpressdb
docker start wordpress
docker ps -a

echo "open http://10.0.75.1/"
echo "ready"
timeout 15
