FROM ubuntu:bionic

ENV DEBIAN_FRONTEND noninteractive
ENV YARA_VERSION 3.7.1
ENV YARA_PY_VERSION 3.7.0

RUN apt -y update \
  && apt -y --no-install-recommends install ca-certificates make gcc g++ flex bison git automake libtool libmagic-dev libssl-dev \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && echo "Install Yara from source..." \
  && cd /tmp/ \
  && git clone --recursive --branch v$YARA_VERSION https://github.com/VirusTotal/yara.git \
  && cd /tmp/yara \
  && ./bootstrap.sh \
  && sync \
  && ./configure --with-crypto \
                 --enable-magic \
                 --enable-dotnet \
  && make -j $(nproc)\
  && make install \
  && mkdir /rules \
  && mkdir /malware \
  && cd / \
  && rm -rf /tmp/*

COPY entrypoint.sh /
CMD ["bash", "/entrypoint.sh"]
