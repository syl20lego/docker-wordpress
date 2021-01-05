
docker ps -a
docker stop wordpress
docker stop wordpressdb
docker ps -a

echo "ready"
timeout 15
