module SENSOR;
export {
  const sensor_id = "2016-12-13-domaincop247.com-malspam-traffic.pcap" &redef;
}
@load frameworks/files/hash-all-files

# Kafka config
@load ./scripts/plugins/kafka

# Add sensor and log meta information to each log
@load ./scripts/frameworks/logging/extension

# load custom rules
@load ./scripts/__load__.bro

event bro_init()
{
    Log::disable_stream(PacketFilter::LOG);
    Log::disable_stream(Reporter::LOG);
}

# ignore checksum
redef ignore_checksums = T;

# protocol settings
@load base/protocols/dhcp
@load base/protocols/dns
@load base/protocols/dce-rpc
@load base/protocols/dnp3
@load base/protocols/ftp
@load base/protocols/http
@load base/protocols/imap
@load base/protocols/irc
@load base/protocols/krb
@load base/protocols/modbus
@load base/protocols/mysql
@load base/protocols/ntlm
@load base/protocols/pop3
@load base/protocols/radius
@load base/protocols/mysql
@load base/protocols/rdp
@load base/protocols/rdp
@load base/protocols/rfb
@load base/protocols/sip
@load base/protocols/smb
@load base/protocols/smtp
@load base/protocols/snmp
@load base/protocols/socks
@load base/protocols/ssh
@load base/protocols/ssl
@load base/protocols/syslog
@load base/protocols/tunnels
@load base/protocols/xmpp

# frameworks
@load base/frameworks/openflow
# misc
@load base/misc/find-checksum-offloading.bro
@load base/misc/find-filtered-trace.bro
@load base/misc/version.bro

# Policy
# @load frameworks/communication/listen.bro
# @load frameworks/control/controllee.bro
# @load frameworks/control/controller.bro
@load frameworks/dpd/detect-protocols.bro
@load frameworks/dpd/packet-segment-logging.bro
@load frameworks/intel/do_notice.bro
@load frameworks/intel/do_expire.bro
@load frameworks/intel/whitelist.bro
@load frameworks/intel/seen/__load__.bro
@load frameworks/intel/seen/conn-established.bro
@load frameworks/intel/seen/dns.bro
@load frameworks/intel/seen/file-hashes.bro
@load frameworks/intel/seen/file-names.bro
@load frameworks/intel/seen/http-headers.bro
@load frameworks/intel/seen/http-url.bro
@load frameworks/intel/seen/pubkey-hashes.bro
@load frameworks/intel/seen/smtp-url-extraction.bro
@load frameworks/intel/seen/smtp.bro
@load frameworks/intel/seen/ssl.bro
@load frameworks/intel/seen/where-locations.bro
@load frameworks/intel/seen/x509.bro
@load frameworks/files/detect-MHR.bro
@load frameworks/files/entropy-test-all-files.bro
#@load frameworks/files/extract-all-files.bro
@load frameworks/files/hash-all-files.bro
@load frameworks/packet-filter/shunt.bro
@load frameworks/software/version-changes.bro
@load frameworks/software/vulnerable.bro
@load frameworks/software/windows-version-detection.bro
@load integration/barnyard2/__load__.bro
@load integration/barnyard2/main.bro
@load integration/barnyard2/types.bro
@load integration/collective-intel/__load__.bro
@load integration/collective-intel/main.bro
@load misc/capture-loss.bro
@load misc/detect-traceroute/__load__.bro
@load misc/detect-traceroute/main.bro
# @load misc/dump-events.bro
@load misc/known-devices.bro
@load misc/load-balancing.bro
@load misc/loaded-scripts.bro
@load misc/profiling.bro
@load misc/scan.bro
@load misc/stats.bro
@load misc/trim-trace-file.bro
@load protocols/conn/known-hosts.bro
@load protocols/conn/known-services.bro
@load protocols/conn/mac-logging.bro
@load protocols/conn/vlan-logging.bro
@load protocols/conn/weirds.bro
@load protocols/dhcp/known-devices-and-hostnames.bro
@load protocols/dns/auth-addl.bro
@load protocols/dns/detect-external-names.bro
@load protocols/ftp/detect-bruteforcing.bro
@load protocols/ftp/detect.bro
@load protocols/ftp/software.bro
@load protocols/http/detect-sqli.bro
@load protocols/http/detect-webapps.bro
@load protocols/http/header-names.bro
@load protocols/http/software-browser-plugins.bro
@load protocols/http/software.bro
@load protocols/http/var-extraction-cookies.bro
@load protocols/http/var-extraction-uri.bro
@load protocols/krb/ticket-logging.bro
@load protocols/modbus/known-masters-slaves.bro
@load protocols/modbus/track-memmap.bro
@load protocols/mysql/software.bro
@load protocols/rdp/indicate_ssl.bro
@load protocols/smb/__load__.bro
@load protocols/smb/files.bro
@load protocols/smb/main.bro
@load protocols/smb/smb1-main.bro
@load protocols/smb/smb2-main.bro
@load protocols/smtp/blocklists.bro
@load protocols/smtp/detect-suspicious-orig.bro
@load protocols/smtp/entities-excerpt.bro
@load protocols/smtp/software.bro
@load protocols/ssh/detect-bruteforcing.bro
@load protocols/ssh/geo-data.bro
@load protocols/ssh/interesting-hostnames.bro
@load protocols/ssh/software.bro
@load protocols/ssl/expiring-certs.bro
@load protocols/ssl/extract-certs-pem.bro
@load protocols/ssl/heartbleed.bro
@load protocols/ssl/known-certs.bro
@load protocols/ssl/log-hostcerts-only.bro
#@load protocols/ssl/notary.bro
@load protocols/ssl/validate-certs.bro
@load protocols/ssl/validate-ocsp.bro
@load protocols/ssl/weak-keys.bro
@load tuning/__load__.bro
@load tuning/defaults/__load__.bro
@load tuning/defaults/extracted_file_limits.bro
@load tuning/defaults/packet-fragments.bro
@load tuning/defaults/warnings.bro
@load tuning/json-logs.bro
@load tuning/track-all-assets.bro
