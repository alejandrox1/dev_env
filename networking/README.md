# Firewall Made Easy
```
sudo ufw allow from 192.168.1.0/24 to any port 22
```


# SSH Tunneling between LAN-connected machines

* Find your internal IP address:
```
ip route get 8.8.8.8 | awk '{print $NF; exit}'
```

* Find devices connected to your private network `find_lan_devices.sh`
```
lanLookup() {                                                                   
    nslookup 192.168.254.$1 | grep 'name' | awk '{print $NF}' | sed 's/\.$//'   
}                                                                               
                                                                                
for ip in $(seq 1 254); do                                                      
    ping -c 1 192.168.254.$ip > /dev/null;                                      
    [ $? -eq 0 ] && echo "192.168.254.${ip} UP" && lanLookup $ip;               
    echo                                                                        
done 
```
