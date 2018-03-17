#!/bin/bash

sudo apt-get update -y && sudo apt-get install -y virtualbox 

curl -L https://github.com/docker/machine/releases/download/v0.14.0/docker-machine-`uname -s`-`uname -m` > docker-machine-copy && \
    sudo install docker-machine-copy /usr/local/bin/docker-machine && rm docker-machine-copy
