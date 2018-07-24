#!/bin/bash -e
malice plugin update --all
cd /malware
for malware in $(ls *)
do
	echo "scan $malware"
	/sbin/tini -- malice scan $malware
done
