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
   a. Install your ssh server
      ```
      sudo apt-get install -y openssh-server
      ```

   b. Login as `mpiuser`
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
