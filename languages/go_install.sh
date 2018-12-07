#!/bin/bash

GOV="1.11.2"

cd /tmp

wget https://dl.google.com/go/go${GOV}.linux-amd64.tar.gz

sudo tar -C /usr/local -xzf go${GOV}.linux-amd64.tar.gz

mkdir -p $HOME/go

echo 'export GOROOT=/usr/local/go' >> ~/.bashrc
echo 'export GOPATH=$HOME/go' >> ~/.bashrc 
echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bashrc 
