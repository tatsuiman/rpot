#!/bin/bash

curl -s http://geolite.maxmind.com/download/geoip/database/GeoLite2-City.mmdb.gz -o GeoLite2-City.mmdb.gz
curl -s http://geolite.maxmind.com/download/geoip/database/GeoLite2-Country.mmdb.gz -o GeoLite2-Country.mmdb.gz
curl -s http://geolite.maxmind.com/download/geoip/database/GeoLite2-ASN.tar.gz -o GeoLite2-ASN.tar.gz
gunzip GeoLite2-Country.mmdb.gz
gunzip GeoLite2-City.mmdb.gz
tar zxpvf GeoLite2-ASN.tar.gz --strip-components=1 --wildcards '*.mmdb'
rm GeoLite2-ASN.tar.gz
GEODIR=/usr/share/logstash/vendor/bundle/jruby/2.3.0/gems/logstash-filter-geoip-5.0.3-java/vendor/
mv ./GeoLite2-City.mmdb $GEODIR
mv ./GeoLite2-Country.mmdb $GEODIR
mv ./GeoLite2-ASN.mmdb $GEODIR
