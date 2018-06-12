#!/bin/bash

trap "echo terminating program...; exit;" SIGINT SIGTERM

intranet=1 #254

lanLookup() {
	nslookup 192.168.${intranet}.$1 | grep 'name' | awk '{print $NF}' | sed 's/\.$//'
}

for ip in $(seq 1 254); do 
	ping -c 1 192.168.${intranet}.$ip > /dev/null; 
	[ $? -eq 0 ] && echo "192.168.${intranet}.${ip} UP" && lanLookup $ip && echo;

	(($ip % 20 == 0)) && echo "Ping'd .${intranet}.${ip}/254"
done
