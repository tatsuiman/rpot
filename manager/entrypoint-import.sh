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

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

cat << 'EOF' >> ~/.bashrc
export ENV LANG=en_US.UTF-8
export ENV LC_ALL=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
EOF

# import kibana dashboards
cd /kibana-dashboards
./load.sh kibana
./restore-template.sh -i bro -l elasticsearch
