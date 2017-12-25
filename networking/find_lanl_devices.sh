#!/bin/bash

trap "echo terminating program...; exit;" SIGINT SIGTERM

lanLookup() {
	nslookup 192.168.254.$1 | grep 'name' | awk '{print $NF}' | sed 's/\.$//'
}

for ip in $(seq 1 254); do 
	ping -c 1 192.168.254.$ip > /dev/null; 
	[ $? -eq 0 ] && echo "192.168.254.${ip} UP" && lanLookup $ip && echo;

	(($ip % 10 == 0)) && echo "Ping'd .${ip}/254"
done
