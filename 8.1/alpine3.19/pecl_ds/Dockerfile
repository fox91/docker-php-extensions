FROM php:8.1-alpine3.19

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-ds
ARG PHPEXT_DS_VERSION=1.5.0
RUN set -eux; \
  pecl bundle -d /usr/src/php/ext ds-${PHPEXT_DS_VERSION}; \
  docker-php-ext-install -j$(nproc) ds; \
  \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
