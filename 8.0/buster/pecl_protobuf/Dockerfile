FROM php:8.0-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ARG PHPEXT_PROTOBUF_VERSION=3.14.0

# PHP ext-protobuf
RUN set -eux; \
  pecl install protobuf-${PHPEXT_PROTOBUF_VERSION}; \
  docker-php-ext-enable protobuf; \
  \
  rm -rf /tmp/* /var/tmp/*
