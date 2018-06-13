#!/bin/bash
#
# Only the first two commands are necessary. You may actually try loging out
# and back in in order for the system to update any changes.
#
# Add docker group if it doesn't already exist
sudo groupadd docker

# Add connected user to docker group
sudo gpasswd -a $USER docker

# Keeping this just in case it ever becomes useful.
# Give proper permissions to access config.json
#sudo chown $USER:docker ~/.docker
#sudo chown $USER:docker ~/.docker/config.json
#sudo chmod g+rw ~/.docker/config.json

# Restart docker daemon
sudo service docker restart


