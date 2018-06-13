# Building an MPI cluster

The following instructions assume you are running a Debian distro.

1. Install MPICH
   ```
   sudo apt install -y mpich
   ```

2. Configure your `hosts` file. Open up `/etc/hosts` and add an alias for
   whatever machines you want to include, i.e.,
   ```
   $ cat /etc/hosts

   192.168.1.2 somealias
   ```

3. Create a new user
   ```
   sudo adduser mpiuser
   ```

   Note: `useradd` will not create a `$HOME` directory for the new user.
   Note 2L in case you want to delete this user later on run `sudo userdel
   miuser`.

4. Setup SSH
   4.1. Install your ssh server
      ```
      sudo apt-get install -y openssh-server
      ```

   4.2. Login as `mpiuser`
      ```
      su - mpiuser
      ```

      and generate keys 
      ```
      ssh-keygen
      ```

      Add the generated keys to each of the computers
      ```
      ssh-copy-id -i other
      ```

      In case you want to do `ssh-keygen -t dsa` then you may want to try doing
      `ssh-copy-id -i ~/.ssh/id_rsa other`. 
      If you are having problems with just the previous two steps try running
      the following as well before attempting to login
      ```
      eval `ssh-agent`
      ssh-add ~/.ssh/id_dsa
      ```

5. Setting up NFS.
   5.1. Setup the `nfs-server`. Create a directory to share
      ```
      sudo apt install -y nfs-kernel-server

      # Create a directory to share.
      mkdir cloud
      ```

      To export the `cloud` directory modify `/etc/exports`
      ```
      /home/mpiuser/cloud *(rw,sync,no_root_squash,no_subtree_check)
      ```

      Export all unexported directories
      ```
      exportfs -a
      ```

      If required, restart the nfs server by doing
      ```
      sudo service nfs-kernel-server restart
      ```

   5.2. `nfs-client`. Similarly,
      ```
      sudo apt install -y nfs-common

      # Create a mount point.
      mkdir cloud
      ```

      Mount the nfs-server by creating an entry in `/etc/fstab`
      ```
      # MPI LAN cluster.
      master:/home/mpiuser/cloud /home/mpiuser/cloud
      ```
      To do this manually,
      ```
      sudo mount -t nfs master:/home/mpiuser/cloud ~/cloud
      ```

      Check your mounted directories
      ```
      df -h
      ```

# Notes
## Firewall
If you are getting `Connection refused`s due to firewall rules, try running the
following commands:
```
# Allow incoming ssh trafic from a subnet.
sudo ufw allow from 192.168.1.0/10 to any port 22

# Allow traffic on port 2049 for NFS.
sudo ufw allow from 192.168.1.0/10 to any port 2049
```

To make sure you are opening the correct port(s) for nfs you can always try
running:
```
rpcinfo -p | grep nfs
```

To clean up your `ufw` rules, try:
```
sudo ufw status numbered

# Delete the third rule (for example).
sudo ufw delete 3
```

## MPI hostfile specifications
It may come in handy knowing the number of cores per node when you want to
specify available nodes for your mpi run. A quick way of getting the number of
cores in your computer is to run
```
grep -c ^processor /proc/cpuinfo
```
