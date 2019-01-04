#!/bin/bash
#
# Check the latest in https://golang.org/dl/
#

GOV="1.11.4"

cd /tmp

wget https://dl.google.com/go/go${GOV}.linux-amd64.tar.gz

sudo tar -C /usr/local -xzf go${GOV}.linux-amd64.tar.gz
