#!/usr/bin/env bash

GOV="1.11.4"
PKG="go${GOV}.darwin-amd64.tar.gz"

cd /tmp

wget https://dl.google.com/go/${PKG}

sudo tar -C /usr/local -xzf ${PKG}

mkdir -p $HOME/go

cat << EOF >> $HOME/.bash_profile

# Go settings.
export GOROOT=/usr/local/go
export GOPATH=\$HOME/go 
export PATH=\$GOPATH/bin:\$GOROOT/bin:\$PATH 
EOF
