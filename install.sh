#!/bin/bash      
 
mkdir -p site1
mkdir -p db1

docker ps -a
docker run --name wordpressdb -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE=wordpress -v "$PWD/db1":/var/lib/mysql -d mysql:5.7
docker ps -a
read -p "Continuing in 60 Seconds...." -t 60

docker run -e WORDPRESS_DB_PASSWORD=password -d --name wordpress --link wordpressdb:mysql -p 127.0.0.1:8888:80 -v "$PWD/site1":/var/www/html wordpress
docker ps -a
read -p "Continuing in 10 Seconds...." -t 10

docker ps -a
echo "open http://127.0.0.1:8888"
read -p "Completed in 10 Seconds...." -t 10