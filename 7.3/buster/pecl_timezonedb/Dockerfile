FROM php:7.3-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-timezonedb
ARG PHPEXT_TIMEZONEDB_VERSION=2021.1
RUN set -eux; \
  pecl bundle -d /usr/src/php/ext timezonedb-${PHPEXT_TIMEZONEDB_VERSION}; \
  docker-php-ext-install -j$(nproc) timezonedb; \
  \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
