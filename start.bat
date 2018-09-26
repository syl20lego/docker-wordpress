 
docker ps -a
docker start wordpressdb
docker start wordpress
docker ps -a

echo "open http://127.0.0.1:8888/"
echo "ready"
timeout 15
