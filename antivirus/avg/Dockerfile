FROM debian:jessie

RUN buildDeps='ca-certificates \
               build-essential \
               unzip \
               curl' \
  && apt-get update -qq \
  && apt-get install -yq $buildDeps libc6-i386 --no-install-recommends \
  && echo "===> Install AVG..." \
  && curl -Ls http://download.avgfree.com/filedir/inst/avg2013flx-r3118-a6926.i386.deb > /tmp/avg.deb \
  && dpkg -i /tmp/avg.deb \
  && /etc/init.d/avgd restart \
  && avgcfgctl -w UpdateVir.sched.Task.Disabled=true \
  && avgcfgctl -w Default.setup.daemonize=false   \
  && echo "===> Clean up unnecessary files..." \
  && apt-get purge -y --auto-remove $buildDeps \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*



# Update AVG Definitions
RUN /etc/init.d/avgd restart && avgupdate

WORKDIR /malware

COPY entrypoint.sh /
CMD ["bash", "/entrypoint.sh"]
