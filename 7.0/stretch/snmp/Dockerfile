FROM php:7.0-stretch
MAINTAINER Andrea Falco <fox91fox@gmail.com>

# snmp
RUN persistentDeps=" \
    libsnmp30 \
    snmp-mibs-downloader \
  " \
  && buildDeps=" \
    libsnmp-dev \
  " \
  && set -ex \
  && echo 'deb http://security.debian.org/ stretch/updates main contrib non-free' >> /etc/apt/sources.list \
  && echo 'deb http://httpredir.debian.org/debian/ stretch main contrib non-free' >> /etc/apt/sources.list \
  && DEBIAN_FRONTEND=noninteractive apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y $persistentDeps $buildDeps --no-install-recommends \
  && docker-php-ext-install -j$(nproc) snmp \
  && DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
