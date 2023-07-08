FROM php:8.2-bookworm

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-snmp
RUN set -eux; \
  persistentDeps=" \
    libsnmp40 \
    snmp-mibs-downloader \
  "; \
  buildDeps=" \
    libsnmp-dev \
  "; \
  sed -i \
    -e 's|\ main$|\ main\ contrib\ non-free|g' \
    /etc/apt/sources.list.d/debian.sources \
  ; \
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
