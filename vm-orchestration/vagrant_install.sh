#!/bin/bash
#
# Unnoficial ppa repo
# https://superuser.com/questions/845987/how-do-i-upgrade-vagrant-to-the-latest-version-in-ubuntu
#
# https://vagrant-deb.linestarve.com/


sudo apt-get purge --auto-remove -y vagrant

sudo su -c "echo 'deb https://vagrant-deb.linestarve.com/ any main' >> /etc/apt/sources.list.d/wolfgang42-vagrant.list"  && \
    sudo apt-key adv --keyserver pgp.mit.edu --recv-key AD319E0F7CFFA38B4D9F6E55CE3F3DE92099F7A4 && \
    sudo apt-get update -y && sudo apt-get install -y vagrant 
