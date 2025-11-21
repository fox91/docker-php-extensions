FROM php:8.5-alpine3.22

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-timezonedb
ARG PHPEXT_TIMEZONEDB_VERSION=2025.2.2
RUN set -eux; \
  pecl bundle -d /usr/src/php/ext timezonedb-${PHPEXT_TIMEZONEDB_VERSION}; \
  docker-php-ext-install -j$(nproc) timezonedb; \
  \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
