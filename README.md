# Real-time Packet Observation Tool (RPOT)

## architecture
![architecture](https://github.com/tatsu-i/rpot/raw/master/screenshot/architecture.png "architecture")


## Startup
```
$ echo 'vm.max_map_count = 262144' | sudo tee -a /etc/sysctl.conf
$ sudo sysctl -p
$ cd rpot
$ docker-compose up manager
```

## Analysis pcap files
### step 1 copy or mount pcap file directory
```
$ cp /path/to/pcap/*.pcap ./pcap/
```

### step 2 run docker 
```
$ docker-compose up bro
```

## Protocol coverage

| Protocol | Decode Payload |  ElasticSearch Output | Kibana Visualization |
| :--- | :---: | :---: | :---:|
| ARP  | ○ | × | × | 
| AYIYA  | ○ | × | × | 
| BackDoor |○ | × | × | 
| BitTorrent |○ | × | × | 
| DCE RPC  | ○ | ○ | × | 
| DHCP  | ○ | ○ | ○ | 
| DNP3  | ○ | ○ | × | 
| DNS  | ○ | ○ | ○ | 
| File  | ○ | ○ | ○ | 
| [Finger](https://en.wikipedia.org/wiki/Finger_protocol)  | ○ | × | × | 
| FTP  | ○ | ○ | × | 
| [Gnutella](http://en.wikipedia.org/wiki/Gnutella) | ○ | × | × | 
| GSSAPI | ○ | × | × | 
| GTPv1 | ○ | × | × | 
| HTTP | ○ | ○ | ○ | 
| ICMP | ○ | ○ | ○ | 
| [Ident](http://en.wikipedia.org/wiki/ident_protocol) | ○ | × | × | 
| IMAP | ○ | × | × | 
| IRC | ○ | ○ | ○ | 
| kerberos | ○ | ○ | × | 
| [Login](https://tools.ietf.org/html/rfc1258.html) | ○ | × | × | 
| [MIME](http://en.wikipedia.org/wiki/MIME) | ○ | × | × | 
| [Modbus](https://en.wikipedia.org/wiki/Modbus) | ○ | ○ | × | 
| MySQL | ○ | ○ | × | 
| NCP | ○ | × | × | 
| NetBios | ○ | ○ | ○ | 
| NTLM | ○ | ○ | ○ | 
| NTP | ○ | × | × | 
| OpenFlow | ○ | ○ | ○ | 
| POP3 | ○ | × | × | 
| RADIUS | ○ | ○ | × | 
| RDP | ○ | ○ | × | 
| RFB | ○ | ○ | × | 
| RPC | ○ | × | × | 
| SIP | ○ | ○ | ○ | 
| SMB | ○ | ○ | ○ | 
| SMTP | ○ | ○ | ○ | 
| SNMP | ○ | ○ | ○ | 
| SOCKS | ○ | ○ | ○ | 
| SSH | ○ | ○ | ○ | 
| SSL | ○ | ○ | ○ | 
| Syslog | ○ | ○ | × | 
| TCP | ○ | ○ | ○ | 
| [Teredo](https://tools.ietf.org/html/rfc4380.html) | ○ | ○ | × | 
| UDP | ○ | ○ | ○ | 
| XMPP | ○ | × | × | 
| ZIP | ○ | × | × | 

### Visualization

Access Kibana url (``http://localhost:5601``)
Click [Dashboard] -> [Open] -> [MAIN]

![screenshot0](https://github.com/tatsu-i/rpot/raw/master/screenshot/screenshot0.png "overview")
![screenshot1](https://github.com/tatsu-i/rpot/raw/master/screenshot/screenshot1.png "HTTP")
![screenshot2](https://github.com/tatsu-i/rpot/raw/master/screenshot/screenshot2.png "Intelligence")
![screenshot3](https://github.com/tatsu-i/rpot/raw/master/screenshot/screenshot3.png "Connection")
![screenshot5](https://github.com/tatsu-i/rpot/raw/master/screenshot/screenshot5.png "Files")
![screenshot6](https://github.com/tatsu-i/rpot/raw/master/screenshot/screenshot6.png "Suricata")
![screenshot7](https://github.com/tatsu-i/rpot/raw/master/screenshot/screenshot7.png "SSL")
