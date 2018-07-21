#!/bin/bash -e
cd /pcap
for pcap_file in $(ls *.pcap)
do
	suricata -c /etc/suricata/suricata.yaml -r $pcap_file
done
