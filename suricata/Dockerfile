FROM ubuntu:bionic

ADD config/ /etc/suricata/

RUN apt-get update && \
    apt-get -y --no-install-recommends install libpcre3 libpcre3-dbg libpcre3-dev \
    build-essential autoconf automake libtool libpcap-dev libnet1-dev liblz4-dev \
    libyaml-0-2 libyaml-dev pkg-config zlib1g zlib1g-dev libcap-ng-dev libcap-ng0 \
    make libmagic-dev libjansson-dev git-core oinkmaster wget inetutils-ping \
    libnetfilter-queue-dev libnetfilter-queue1 libnfnetlink-dev libnfnetlink0 \
    ca-certificates curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN addgroup --gid 2000 suri && \
   adduser --system --uid 2000 --gid 2000 suri && \
   git clone https://github.com/OISF/suricata.git && cd suricata && \
   git clone https://github.com/OISF/libhtp.git -b 0.5.x && \
   ./autogen.sh && \
   ./configure --enable-profiling --enable-nfqueue --prefix=/usr --sysconfdir=/etc --localstatedir=/var && \
# --enable-rust  # not working yet
    make && make install-full && \
    cd .. && rm -rf /suricata/

COPY oinkmaster.conf /etc/oinkmaster.conf
RUN oinkmaster -C /etc/oinkmaster.conf -o /usr/share/suricata/rules/
COPY entrypoint.sh /
CMD ["bash", "/entrypoint.sh"]
