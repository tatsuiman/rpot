FROM ubuntu:bionic

ENV DEBIAN_FRONTEND=noninteractive

RUN \
 apt-get update && \
 apt-get -y upgrade && \
 apt-get -y install --no-install-recommends apt-utils locales curl ca-certificates sudo git net-tools jq

RUN apt -y install --no-install-recommends nodejs npm
RUN \
  npm cache clean && \
  npm install n -g && \
  n stable && \
  ln -sf /usr/local/bin/node /usr/bin/node && \
  apt-get purge -y nodejs npm

RUN \
  npm install elasticdump -g && \
  apt-get -y autoclean && \
  rm -rf /var/lib/apt/lists/*

COPY ./entrypoint-import.sh /
COPY ./entrypoint-export.sh /
ADD ./es_tools /
