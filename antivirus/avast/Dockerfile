FROM ubuntu:xenial

# Install Avast AV
COPY license.avastlic /etc/avast/license.avastlic
RUN apt-get update -qq \
  && apt-get install -yq ca-certificates --no-install-recommends \
  && echo "===> Install Avast..." \
  && echo 'deb http://deb.avast.com/lin/repo debian release' >> /etc/apt/sources.list \
  && apt-key adv --fetch-keys http://files.avast.com/files/resellers/linux/avast.gpg \
  && apt-get update -q && apt-get install -y avast-fss \
  && chown avast:avast /etc/avast/license.avastlic \
  # patch update script
  && download='DOWNLOAD="curl -L -s --connect-timeout 5 -f"' \
  && download_fix='DOWNLOAD="curl -L -s -f"' \
  && sed -i "s|$download|$download_fix|g" /var/lib/avast/Setup/avast.setup \
  && echo "===> Clean up unnecessary files..." \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/archives /tmp/* /var/tmp/*


# Update Avast Definitions
RUN echo "===> Update Avast..." && /var/lib/avast/Setup/avast.vpsupdate

WORKDIR /malware

COPY entrypoint.sh /
CMD ["bash", "/entrypoint.sh"]
