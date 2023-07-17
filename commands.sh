#!/bin/bash

#Docker comands to perform the tasks

docker build -t choco-web-site .
docker run -d --name mysql-container -e MYSQL_ROOT_PASSWORD=password mysql:latest
docker run -d -p 8080:80 --link mysql-container:db choco-web-site