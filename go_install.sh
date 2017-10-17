#!/bin/bash


sudo add-apt-repository ppa:gophers/archive 
sudo apt update -y && sudo apt-get install -y golang-1.8-go


echo 'export PATH=/usr/lib/go-1.8/bin:$PATH' >> ~/.bashrc                                   
echo 'export GOPATH=$HOME/go' >> ~/.bashrc
