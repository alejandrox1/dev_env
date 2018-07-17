#!/bin/bash
#
# see:
#
# VirtualBox - RTR3InitEx failed with rc=-1912 (rc=-1912) 
# https://askubuntu.com/questions/900794/virtualbox-rtr3initex-failed-with-rc-1912-rc-1912
#
# SpectreAndMeltdown
# https://wiki.ubuntu.com/SecurityTeam/KnowledgeBase/SpectreAndMeltdown

sudo apt-get purge --auto-remove -y virtualbox

sudo su -c "echo 'deb http://download.virtualbox.org/virtualbox/debian xenial contrib' >> /etc/apt/sources.list" && \
    wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add - && \
    sudo apt-get update -y && \
    sudo apt-get install -y virtualbox-5.2 && \
    sudo /sbin/vboxconfig
