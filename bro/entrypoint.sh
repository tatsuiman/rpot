#!/bin/bash -e
cd /pcap
for pcap_file in $(ls *.pcap)
do
	echo "scan ${pcap_file} ${MODE} mode"
	name=$(basename ${pcap_file})
	cp /bro_config/${MODE}-hunter.bro /bro_config/output.bro
	sed -i -e "s/sensor-001/${name}/g" /bro_config/output.bro
	/usr/local/bro/bin/bro -r ${pcap_file} /bro_config/output.bro
done
