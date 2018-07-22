FROM ubuntu:bionic

ENV DEBIAN_FRONTEND noninteractive
ENV VERSION 0.100.1

RUN apt -y update \
  && apt -y --no-install-recommends install ca-certificates make gcc g++ wget libssl-dev libxml2-dev file \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && cd /tmp \
  && wget https://www.clamav.net/downloads/production/clamav-${VERSION}.tar.gz -O /tmp/clamav-${VERSION}.tar.gz \
  && tar zxpvf ./clamav-${VERSION}.tar.gz \
  && cd /tmp/clamav-${VERSION} \
  && ./configure \
  && make -j $(nproc) \
  && make install \
  && mkdir -p /usr/local/share/clamav \
  && mkdir /var/log/clamav \
  && chown -R root:adm /var/log/clamav \
  && chmod 2755 /var/log/clamav

RUN ldconfig
ADD ./clamd.conf /usr/local/etc/
ADD ./clamav-update /usr/local/bin/
RUN chmod 755 /usr/local/bin/clamav-update
COPY entrypoint.sh /
CMD ["bash", "/entrypoint.sh"]
