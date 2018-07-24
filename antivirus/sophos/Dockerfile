#FROM ubuntu:bionic
FROM debian:jessie

ENV DEBIAN_FRONTEND=noninteractive
ENV BUILD_DEPS="ca-certificates wget"

RUN apt-get update \
  && apt-get install -y $BUILD_DEPS \
  && echo "===> Install Sophos..." \
  && cd /tmp \
  && wget -q https://github.com/maliceio/malice-av/raw/master/sophos/sav-linux-free-9.tgz \
  && tar xzvf sav-linux-free-9.tgz \
  && ./sophos-av/install.sh /opt/sophos --update-free --acceptlicence --autostart=False --enableOnBoot=False --automatic --ignore-existing-installation --update-source-type=s \
  && echo "===> Update Sophos..." \
  && /opt/sophos/update/savupdate.sh \
  && echo "===> Clean up unnecessary files..." \
  && apt-get remove --purge -y $BUILD_DEPS \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /malware
COPY entrypoint.sh /
CMD ["bash", "/entrypoint.sh"]
