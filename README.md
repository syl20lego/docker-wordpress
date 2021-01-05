Sample scripts to install and run Wordpress and MySql instances inside docker.

This is inpired by [How to Use the Official Docker WordPress Image](https://www.sitepoint.com/how-to-use-the-official-docker-wordpress-image)

# Install
`git clone https://github.com/syl20lego/docker-wordpress.git`

# Docker

Requires docker to be running

# Docker Compose

You can now just use the docker-compose.yml file and run using

```
docker-compose -f "docker-compose.yml" up -d --build
```

```
docker-compose -f "docker-compose.yml" down
```

p.s. you can still use the stop or remove script if you want to clean up you folder

# Windows

You might need to shared the drive. You can use `user.bat password` to create a windows user to be used with docker shared drive.

* `install.bat` will install both MySql and Wordpress.
* `stop.bat` stop both Wordpress and MySql, the containers remains in their current state (saved).
* `start.bat` start both Wordpress and MySql with their last state.
* `remove.bat` remove everything, there is no comming back.
* `user.bat password` create windows user by providing a password (you should change the password parameter) 


Start a Wordpress instance on http://127.0.0.1:8888

# MacOS and Linux

* `./install.sh` will install both MySql and Wordpress.
* `./stop.sh` stop both Wordpress and MySql, the containers remains in their current state (saved).
* `./start.sh` start both Wordpress and MySql with their last state.
* `./remove.sh` remove everything, there is no comming back. On Linux you might have to use sudo `sudo ./remove.sh` as the db1 and site1 directory are under docker and www-date ownership.

Start a Wordpress instance on http://127.0.0.1:8888
