# Build and start
```
$ echo 'vm.max_map_count = 262144' | sudo tee -a /etc/sysctl.conf
$ sudo sysctl -p
$ docker-compose build
$ docker-compose up --build oneshot
```

# Analysis pcap files
## step 1 copy or mount pcap file directory
```
$ cp /path/to/pcap/*.pcap ./pcap/
```

## step 2 run docker 
```
$ docker-compose up -d kafka
$ docker-compose up bro
```
