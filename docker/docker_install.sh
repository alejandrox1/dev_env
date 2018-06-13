#!/bin/bash
#
# Docker Installation in Ubuntu.
# This script will work for versions 16.04 and 17.14.
# At the time of this writing, June 2018, Ubuntu 18.04 does not yet have
# Docker-ce added to the repository so the workaround is to use the repository
# for ubuntu 17.04 or 16.04, codename artful and xenial, respectively.
#

# Unistall old versions
sudo apt-get remove -y docker docker-engine docker.io

# Install packages to allow apt to use a repository over HTTPS:
sudo apt-get update -y && sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common 

# Add Docker’s official GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sleep 5
echo "Verify that the key fingerprint is:\t\n 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88\n"
sleep 5

sudo apt-key fingerprint 0EBFCD88

# set up a stable repo
if [ $(lsb_release -cs) == "bionic" ]; then
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu artful stable"
else
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) stable"


# Install docker
sudo apt-get update -y && sudo apt-get install -y docker-ce

# Get Docker version
apt-cache madison docker-ce


# Test it
sudo docker run hello-world

# Docker-compose
# get latest docker compose released tag
COMPOSE_VERSION=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep 'tag_name' | cut -d\" -f4)

# Install docker-compose
sudo sh -c "curl -L https://github.com/docker/compose/releases/download/${COMPOSE_VERSION}/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose"
sudo chmod +x /usr/local/bin/docker-compose
sudo sh -c "curl -L https://raw.githubusercontent.com/docker/compose/${COMPOSE_VERSION}/contrib/completion/bash/docker-compose > /etc/bash_completion.d/docker-compose"

# Output compose version
docker-compose --version
