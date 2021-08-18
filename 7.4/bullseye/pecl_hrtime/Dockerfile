FROM php:7.4-bullseye

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-hrtime
ARG PHPEXT_HRTIME_VERSION=0.6.0
RUN set -eux; \
  pecl bundle -d /usr/src/php/ext hrtime-${PHPEXT_HRTIME_VERSION}; \
  docker-php-ext-install -j$(nproc) hrtime; \
  \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
