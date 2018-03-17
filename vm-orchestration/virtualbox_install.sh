#!/bin/bash

sudo apt-get purge --auto-remove -y virtualbox

sudo su -c "echo 'deb http://download.virtualbox.org/virtualbox/debian xenial contrib' >> /etc/apt/sources.list" && \
    wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add - && \
    sudo apt-get update -y && \
    sudo apt-get install -y virtualbox-5.2 && \
    sudo /sbin/vboxconfig
