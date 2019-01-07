# Installing and setting up Docker

## Mac
Go and [download Docker](https://docs.docker.com/docker-for-mac/install/) then
just follow the instruction.

## Linux
For Ubuntu 16.04, 17.14, and 18.04 use the `docker_install.sh` and
`docker-machine_install.sh` scripts to install Docker engine and
Docker-machine, respectively.

Note that for the docker machine install the versio is fixed to `v0.14.0`.

For the Docker engine installation, when setting up a stable repo via
`add-apt-repository` command will assume Ubuntu. You will need to change this
line if working with Debian.
