FROM ubuntu:xenial

RUN buildDeps='ca-certificates \
               libreadline-dev:i386 \
               libc6-dev:i386 \
               build-essential \
               gcc-multilib \
               cabextract \
               mercurial \
               git-core \
               unzip \
               wget' \
  && set -x \
  && dpkg --add-architecture i386 && apt-get update -qq \
  && apt-get install -y $buildDeps libc6-i386 --no-install-recommends \
  && echo "===> Install taviso/loadlibrary..." \
  && git clone https://github.com/taviso/loadlibrary.git /loadlibrary \
  && echo "===> Download 32-bit antimalware update file.." \
  && wget --progress=bar:force "https://go.microsoft.com/fwlink/?LinkID=121721&arch=x86" -O \
    /loadlibrary/engine/mpam-fe.exe \
  && cd /loadlibrary/engine \
  && cabextract mpam-fe.exe \
  && rm mpam-fe.exe \
  && cd /loadlibrary \
  && make -j$(nproc) \
  && echo "===> Clean up unnecessary files..." \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/archives /tmp/* /var/tmp/*

COPY update.sh /usr/local/bin/av-update
RUN chmod 755 /usr/local/bin/av-update
RUN av-update

WORKDIR /malware

COPY entrypoint.sh /
CMD ["bash", "/entrypoint.sh"]
