FROM php:8.2-alpine3.19

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-grpc
ARG PHPEXT_GRPC_VERSION=1.63.0
RUN set -eux; \
  persistentDeps=" \
    libstdc++ \
  "; \
  buildDeps=" \
    linux-headers \
    zlib-dev \
  "; \
  apk add --no-cache --virtual .grpc-persistent-deps ${persistentDeps}; \
  apk add --no-cache --virtual .grpc-build-deps ${buildDeps}; \
  \
  pecl bundle -d /usr/src/php/ext grpc-${PHPEXT_GRPC_VERSION}; \
  docker-php-ext-install -j$(nproc) grpc; \
  \
  apk del --no-cache --no-network .grpc-build-deps; \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
