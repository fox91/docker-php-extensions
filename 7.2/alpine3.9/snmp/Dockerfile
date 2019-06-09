FROM php:7.2-alpine3.9

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# snmp
RUN set -ex; \
  persistentDeps=" \
    net-snmp-libs \
  "; \
  buildDeps=" \
    net-snmp-dev \
  "; \
  apk add --no-cache --virtual .snmp-persistent-deps $persistentDeps; \
  apk add --no-cache --virtual .snmp-build-deps $buildDeps; \
  docker-php-ext-install -j$(nproc) snmp; \
  apk del .snmp-build-deps; \
  mkdir -p /var/lib/net-snmp/mib_indexes
