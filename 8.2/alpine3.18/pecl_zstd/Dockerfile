FROM php:8.2-alpine3.18

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-zstd
ARG PHPEXT_ZSTD_VERSION=0.13.1
RUN set -eux; \
  pecl bundle -d /usr/src/php/ext zstd-${PHPEXT_ZSTD_VERSION}; \
  docker-php-ext-install -j$(nproc) zstd; \
  \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
