FROM php:8.2-alpine3.18

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-apcu
ARG PHPEXT_APCU_VERSION=5.1.23
RUN set -eux; \
  pecl bundle -d /usr/src/php/ext apcu-${PHPEXT_APCU_VERSION}; \
  docker-php-ext-install -j$(nproc) apcu; \
  \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
