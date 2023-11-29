FROM php:8.3-bookworm

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-mailparse
ARG PHPEXT_MAILPARSE_VERSION=3.1.6
RUN set -eux; \
  pecl bundle -d /usr/src/php/ext mailparse-${PHPEXT_MAILPARSE_VERSION}; \
  docker-php-ext-install -j$(nproc) mailparse; \
  \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
