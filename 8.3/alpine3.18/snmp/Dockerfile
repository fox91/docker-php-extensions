FROM php:8.3-alpine3.18

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-snmp
RUN set -eux; \
  persistentDeps=" \
    net-snmp-libs \
  "; \
  buildDeps=" \
    net-snmp-dev \
  "; \
  apk add --no-cache --virtual .snmp-persistent-deps ${persistentDeps}; \
  apk add --no-cache --virtual .snmp-build-deps ${buildDeps}; \
  \
  docker-php-ext-install -j$(nproc) snmp; \
  \
  apk del --no-cache --no-network .snmp-build-deps; \
  mkdir -p /var/lib/net-snmp/mib_indexes
