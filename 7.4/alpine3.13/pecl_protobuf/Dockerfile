FROM php:7.4-alpine3.13

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ARG PHPEXT_PROTOBUF_VERSION=3.14.0

# PHP ext-protobuf
RUN set -eux; \
  buildDeps=" \
    ${PHPIZE_DEPS} \
  "; \
  apk add --no-cache --virtual .protobuf-build-deps $buildDeps; \
  \
  pecl install protobuf-${PHPEXT_PROTOBUF_VERSION}; \
  docker-php-ext-enable protobuf; \
  \
  apk del .protobuf-build-deps; \
  rm -rf /tmp/* /var/tmp/*
