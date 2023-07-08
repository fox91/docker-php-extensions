FROM php:8.2-bookworm

LABEL maintainer="Andrea Falco <andrea@falco.sh>"


# PHP ext-timezonedb
ARG PHPEXT_TIMEZONEDB_VERSION=2023.3
RUN set -eux; \
  pecl bundle -d /usr/src/php/ext timezonedb-${PHPEXT_TIMEZONEDB_VERSION}; \
  docker-php-ext-install -j$(nproc) timezonedb; \
  \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
