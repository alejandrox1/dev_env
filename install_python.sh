#!/bin/bash

curl -LO https://repo.continuum.io/archive/Anaconda3-4.3.0-Linux-x86_64.sh

bash Anaconda3-4.3.0-Linux-x86_64.sh

rm Anaconda3-4.3.0-Linux-x86_64.sh

source ~/.bashrc

conda update -y conda

conda update -y python
