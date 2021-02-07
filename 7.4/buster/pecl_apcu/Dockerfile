FROM php:7.4-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-apcu
ARG PHPEXT_APCU_VERSION=5.1.19
RUN set -eux; \
  pecl bundle -d /usr/src/php/ext apcu-${PHPEXT_APCU_VERSION}; \
  docker-php-ext-install -j$(nproc) apcu; \
  \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
