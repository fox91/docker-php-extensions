FROM php:8.1-alpine3.18

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-mongodb
ARG PHPEXT_MONGODB_VERSION=1.17.0
RUN set -eux; \
  persistentDeps=" \
    openssl \
  "; \
  buildDeps=" \
    openssl-dev \
  "; \
  apk add --no-cache --virtual .mongodb-persistent-deps ${persistentDeps}; \
  apk add --no-cache --virtual .mongodb-build-deps ${buildDeps}; \
  \
  pecl bundle -d /usr/src/php/ext mongodb-${PHPEXT_MONGODB_VERSION}; \
  docker-php-ext-install -j$(nproc) mongodb; \
  \
  apk del --no-cache --no-network .mongodb-build-deps; \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
