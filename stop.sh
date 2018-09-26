#!/bin/bash      

docker ps -a

docker stop wordpress

docker stop wordpressdb

docker ps -a

read -p "Completed in 10 Seconds...." -t 10