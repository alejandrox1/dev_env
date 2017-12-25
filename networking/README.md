# SSH Tunneling between LAN-connected machines
Find your internal IP address:
```
ip route get 8.8.8.8 | awk '{print $NF; exit}'
```

```
dns_lookup {
	nslookup $1 | grep 'name' | awk '{print $NF}' | sed 's/\.$//'
}

for ip in $(seq 1 254); do 
	ping -c 1 192.168.254.$ip > /dev/null; [ $? -eq 0 ] && echo "192.168.254.${ip} UP" || : ; 
done
```
