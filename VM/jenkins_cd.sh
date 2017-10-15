#!/bin/bash


# Install Python
curl -LO https://repo.continuum.io/archive/Anaconda3-4.3.0-Linux-x86_64.sh &&\
	bash Anaconda3-4.3.0-Linux-x86_64.sh -b &&\
	rm Anaconda3-4.3.0-Linux-x86_64.sh &&\
	export export PATH=${HOME}/anaconda3/bin:$PATH &&\
	conda update -y conda &&\
	conda update -y python &&\
	echo 'export PATH=${HOME}/anaconda3/bin:$PATH' >> ~/.bashrc

# Install Java
sudo ap-get update -y && sudo apt-get install -y default-jdk

# Docker Installation in Ubuntu/Xenial 16.04
# Unistall old versions
sudo apt-get remove -y docker docker-engine

# Install packages to allow apt to use a repository over HTTPS:
sudo apt-get update -y && sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common 

# Add Docker’s official GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo "Verify that the key fingerprint is:\t\n 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88\n"
sleep 5

sudo apt-key fingerprint 0EBFCD88

# set up a stable repo
sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"

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
