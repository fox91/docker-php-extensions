FROM php:8.0-alpine3.13

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-apcu
ARG PHPEXT_APCU_VERSION=5.1.19
RUN set -eux; \
  pecl bundle -d /usr/src/php/ext apcu-${PHPEXT_APCU_VERSION}; \
  docker-php-ext-install -j$(nproc) apcu; \
  \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
