FROM php:5.6
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
  && sed -i -r 's/deb http\:\/\/httpredir\.debian\.org\/debian jessie main/deb http\:\/\/httpredir\.debian\.org\/debian jessie main non-free/g' /etc/apt/sources.list \
  && sed -i -r 's/deb http\:\/\/httpredir\.debian\.org\/debian jessie\-updates main/deb http\:\/\/httpredir\.debian\.org\/debian jessie\-updates main non-free/g' /etc/apt/sources.list \
  && sed -i -r 's/deb http\:\/\/security\.debian\.org jessie\/updates main/deb http\:\/\/security\.debian\.org jessie\/updates main non-free/g' /etc/apt/sources.list \
  && DEBIAN_FRONTEND=noninteractive apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y $persistentDeps $buildDeps --no-install-recommends \
  && docker-php-ext-install snmp \
  && DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
