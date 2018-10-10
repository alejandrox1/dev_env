#!/usr/bin/env bash

sudo apt-get update -y \
    && sudo apt-get install -y software-properties-common \
    && sudo add-apt-repository -y ppa:certbot/certbot \
    && sudo apt-get update -y \
    && sudo apt-get install -y python-certbot-apache
