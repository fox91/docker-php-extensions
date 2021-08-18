FROM php:8.0-bullseye

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-snmp
RUN set -eux; \
  persistentDeps=" \
    libsnmp30 \
    snmp-mibs-downloader \
  "; \
  buildDeps=" \
    libsnmp-dev \
  "; \
  echo 'deb http://security.debian.org/ bullseye/updates main contrib non-free' >> /etc/apt/sources.list; \
  echo 'deb http://httpredir.debian.org/debian/ bullseye main contrib non-free' >> /etc/apt/sources.list; \
  DEBIAN_FRONTEND=noninteractive apt-get update; \
  DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    ${persistentDeps} \
    ${buildDeps} \
  ; \
  \
  docker-php-ext-install -j$(nproc) snmp; \
  \
  DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove \
    -o APT::AutoRemove::RecommendsImportant=false \
    -o APT::AutoRemove::SuggestsImportant=false \
    ${buildDeps} \
  ; \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
