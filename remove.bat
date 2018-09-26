
docker ps -a
docker stop wordpress
docker rm wordpress
docker stop wordpressdb
docker rm wordpressdb

# Delete files and folders
del /F /S /Q site1
robocopy site1 site1 /S /MOVE
# Delete files and folders
del /F /S /Q db1
robocopy db1 db1 /S /MOVE

docker ps -a
echo "ready"
timeout 15