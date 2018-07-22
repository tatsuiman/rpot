#!/bin/bash -e
clamav-update
clamscan -r -i /malware/
