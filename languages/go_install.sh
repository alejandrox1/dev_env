#!/bin/bash

GOV="1.10"

sudo add-apt-repository ppa:gophers/archive 
sudo apt update -y && sudo apt-get install -y golang-${GOV}-go

mkdir -p $HOME/go
echo "export GOROOT=/usr/lib/go-${GOV}" >> ~/.bashrc                                                  
echo 'export PATH=$PATH:${GOROOT}/bin' >> ~/.bashrc                                    
echo 'export GOPATH=$HOME/go' >> ~/.bashrc                                   
echo 'export PATH=${PATH}:${GOPATH}/bin' >> ~/.bashrc
