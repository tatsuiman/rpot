#!/bin/bash -e
echo '===== Scan rule Antidebug ====='
yara /rules/Antidebug_AntiVM_index.yar -r /malware 2> /dev/null
echo '===== Scan rule CVE ====='
yara /rules/CVE_Rules_index.yar -r /malware 2> /dev/null
echo '===== Scan rule Crypto ====='
yara /rules/Crypto_index.yar -r /malware 2> /dev/null
echo '===== Scan rule Exploit Kits ====='
yara /rules/Exploit-Kits_index.yar -r /malware 2> /dev/null
echo '===== Scan rule Malicious Documents ====='
yara /rules/Malicious_Documents_index.yar -r /malware 2> /dev/null
#echo '===== Scan rule Mobile Malware ====='
#yara /rules/Mobile_Malware_index.yar -r /malware 2> /dev/null
#echo '===== Scan rule Packers ====='
#yara /rules/Packers_index.yar -r /malware 2> /dev/null
echo '===== Scan rule Webshells ====='
yara /rules/Webshells_index.yar -r /malware 2> /dev/null
echo '===== Scan rule Email ====='
yara /rules/email_index.yar -r /malware 2> /dev/null
echo '===== Scan rule Malware ====='
yara /rules/malware_index.yar -r /malware 2> /dev/null
exit 0
