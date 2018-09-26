#!/bin/bash      
 
mkdir site1
mkdir db1

docker ps -a
docker run --name wordpressdb -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE=wordpress -v d:\docker\wordpress\db1:/var/lib/mysql -d mysql:5.7
timeout 60

docker ps -a
timeout 10

docker run -e WORDPRESS_DB_PASSWORD=password -d --name wordpress --link wordpressdb:mysql -p 10.0.75.1:80:80 -v d:\docker\wordpress\site1:/var/www/html wordpress
docker ps -a
timeout 10

docker ps -a
echo "open http://10.0.75.1/"
echo "ready"
timeout 15