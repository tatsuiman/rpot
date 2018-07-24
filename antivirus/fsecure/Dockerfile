FROM debian:jessie

ENV FSECURE_VERSION 11.10.68

# Install Requirements
RUN buildDeps='ca-certificates wget rpm' \
  && apt-get update -qq \
  && apt-get install -yq $buildDeps lib32stdc++6 psmisc \
  && echo "===> Install F-Secure..." \
  && cd /tmp \
  && wget -q https://download.f-secure.com/corpro/ls/trial/fsls-${FSECURE_VERSION}-rtm.tar.gz \
  && tar zxvf fsls-${FSECURE_VERSION}-rtm.tar.gz \
  && cd fsls-${FSECURE_VERSION}-rtm \
  && chmod a+x fsls-${FSECURE_VERSION} \
  && ./fsls-${FSECURE_VERSION} --auto standalone lang=en --command-line-only \
  && fsav --version \
  && echo "===> Update F-Secure..." \
  && cd /tmp \
  && wget -q http://download.f-secure.com/latest/fsdbupdate9.run \
  && mv fsdbupdate9.run /opt/f-secure/ \
  && echo "===> Clean up unnecessary files..." \
  && apt-get purge -y --auto-remove $buildDeps \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/*



# Update F-Secure
RUN echo "===> Update F-Secure Database..." \
  && /etc/init.d/fsaua start \
  && /etc/init.d/fsupdate start \
  && /opt/f-secure/fsav/bin/dbupdate /opt/f-secure/fsdbupdate9.run; exit 0

WORKDIR /malware

COPY entrypoint.sh /
CMD ["bash", "/entrypoint.sh"]
