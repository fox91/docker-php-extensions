FROM php:7.4-bullseye

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-protobuf
ARG PHPEXT_PROTOBUF_VERSION=3.19.1
RUN set -eux; \
  pecl bundle -d /usr/src/php/ext protobuf-${PHPEXT_PROTOBUF_VERSION}; \
  docker-php-ext-install -j$(nproc) protobuf; \
  \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
