#!/bin/bash
ES_HOST=${1}
for i in $(ls *.json)
do
	echo load $i
	./import-dashboard.sh ${ES_HOST} $i
done
