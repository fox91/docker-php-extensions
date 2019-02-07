FROM php:7.2-alpine3.9
MAINTAINER Andrea Falco <fox91fox@gmail.com>

# snmp
RUN persistentDeps=" \
    net-snmp-libs \
  " \
  && buildDeps=" \
    net-snmp-dev \
  " \
  && set -ex \
  && apk add --no-cache --virtual .persistent-deps $persistentDeps \
  && apk add --no-cache --virtual .build-deps $buildDeps \
  && docker-php-ext-install -j$(nproc) snmp \
  && apk del .build-deps \
  && mkdir -p /var/lib/net-snmp/mib_indexes
