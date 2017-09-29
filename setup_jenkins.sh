#!/bin/bash

sudo docker stop $(sudo docker ps -aq) && sudo docker rm $(sudo docker ps -aq)

sudo docker run -d --name jenkins -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts

sleep 1m

sudo docker ps
