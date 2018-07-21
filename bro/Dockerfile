FROM ubuntu:bionic

ENV DEBIAN_FRONTEND noninteractive

RUN  apt -y update && \
 apt -y --no-install-recommends install cmake make gcc g++ flex bison libpcap-dev libssl1.0-dev  python-dev swig zlib1g-dev libgeoip-dev zookeeperd autoconf python-pip python3-pip jq curl wget git net-tools inetutils-ping && \
 apt-get clean && \
 rm -rf /var/lib/apt/lists/*

WORKDIR /tmp
RUN curl -L https://github.com/edenhill/librdkafka/archive/v0.9.4.tar.gz | tar xvz && \
 cd /tmp/librdkafka-0.9.4 && \
 ./configure --enable-sasl && make -j $(nproc) && make install && \
 rm -rf /tmp/librdkafka-0.9.4
RUN ldconfig

RUN git clone --recursive https://github.com/bro/bro -b v2.5.4 /tmp/bro && \
  cd /tmp/bro && \
  ./configure && make -j $(nproc) && make install && \
  ln -s /usr/local/bro/bin/bro /usr/local/bin && \
  cd /tmp && git clone https://github.com/apache/metron-bro-plugin-kafka -b Metron-bro-plugin-kafka_0.1.0 /tmp/metron-bro-plugin-kafka && \
  cd /tmp/metron-bro-plugin-kafka && \
  ./configure --bro-dist=/tmp/bro && make -j $(nproc) && make install && ldconfig && \
  rm -rf /tmp/metron-bro-plugin-kafka && \
  rm -rf /tmp/bro

COPY entrypoint.sh /
CMD ["bash", "/entrypoint.sh"]
