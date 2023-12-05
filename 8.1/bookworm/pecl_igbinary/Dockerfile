FROM php:8.1-bookworm

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-igbinary
ARG PHPEXT_IGBINARY_VERSION=3.2.15
RUN set -eux; \
  pecl bundle -d /usr/src/php/ext igbinary-${PHPEXT_IGBINARY_VERSION}; \
  docker-php-ext-install -j$(nproc) igbinary; \
  \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
