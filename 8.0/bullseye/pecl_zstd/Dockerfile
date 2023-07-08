FROM php:8.0-bullseye

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-zstd
ARG PHPEXT_ZSTD_VERSION=0.12.3
RUN set -eux; \
  pecl bundle -d /usr/src/php/ext zstd-${PHPEXT_ZSTD_VERSION}; \
  docker-php-ext-install -j$(nproc) zstd; \
  \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
