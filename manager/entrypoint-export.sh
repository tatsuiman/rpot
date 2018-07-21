#!/bin/bash -e

while true;do
 curl -s elasticsearch:9200 && { sleep 2; break; }
 sleep 1
done

while true;do
 curl -s kibana:5601 && { sleep 2; break; }
 sleep 1
done

sleep 1

# import kibana dashboards
cd /kibana-dashboards
./export-all.sh kibana
./backup-template.sh -i bro -l elasticsearch
./backup-template.sh -i suricata -l elasticsearch
