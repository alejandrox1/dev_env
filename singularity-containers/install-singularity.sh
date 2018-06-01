#!/bin/bash

sudo apt-get install -y libtool-bin libarchive-dev

rm -rf singularity && \
    git clone https://github.com/singularityware/singularity.git && \
    cd singularity && \
    ./autogen.sh && \
    ./configure --prefix=/usr/local && \
    make && \
    sudo make install
