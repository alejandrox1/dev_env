#!/bin/bash
#
# Install the nvidia container runtime
#   https://github.com/NVIDIA/nvidia-container-runtime
#
# To get the appropiate repository for a given distro see:
#   https://nvidia.github.io/nvidia-container-runtime/
#
set -e

# Install the container runtime.
curl -s -L https://nvidia.github.io/nvidia-container-runtime/gpgkey | \
    sudo apt-key add -

distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-container-runtime/$distribution/nvidia-container-runtime.list | \
  sudo tee /etc/apt/sources.list.d/nvidia-container-runtime.list

sudo apt-get update -y && \
    sudo apt-get install -y nvidia-container-runtime

# Keeping this two commands here to manage the docker daemon in case we want to
# test out rm/adding this runtime.
#sudo systemctl daemon-reload
#sudo systemctl restart docker

# Daemon configuration file
sudo tee /etc/docker/daemon.json <<EOF
{
    "runtimes": {
        "nvidia": {
            "path": "/usr/bin/nvidia-container-runtime",
            "runtimeArgs": []
        }
    }
}
EOF
sudo pkill -SIGHUP dockerd
