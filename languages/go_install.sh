#!/bin/bash


sudo add-apt-repository ppa:gophers/archive 
sudo apt update -y && sudo apt-get install -y golang-1.9-go

mkdir -p $HOME/go
echo 'export GOROOT=/usr/lib/go-1.9/' >> ~/.bashrc                                                  
echo 'export PATH=$PATH:${GOROOT}/bin' >> ~/.bashrc                                    
echo 'export GOPATH=$HOME/go' >> ~/.bashrc                                   
echo 'export PATH=${GOPATH}/bin:${PATH}' >> ~/.bashrc
