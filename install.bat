
mkdir site1
mkdir db1

docker ps -a

docker run --name wordpressdb -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE=wordpress -v %cd%/db1:/var/lib/mysql -d mysql:5.7
timeout 60

docker ps -a
timeout 10

docker run -e WORDPRESS_DB_PASSWORD=password -d --name wordpress --link wordpressdb:mysql -p 127.0.0.1:8888:80 -v %cd%/site1:/var/www/html wordpress
docker ps -a
timeout 10

docker ps -a
echo "open http://127.0.0.1:8888/"
echo "ready"
timeout 15