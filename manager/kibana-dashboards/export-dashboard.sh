#!/bin/bash
KIBANA_HOST=${1}
UUID=${2}
NAME=${3}
curl -XGET ${KIBANA_HOST}:5601/api/kibana/dashboards/export?dashboard=${UUID} > ${NAME}-dashboards.json
