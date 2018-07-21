#!/bin/bash
curl -XPOST http://${1}:5601/api/kibana/dashboards/import -H 'kbn-xsrf:true' -H 'Content-type:application/json' -d @${2} 
