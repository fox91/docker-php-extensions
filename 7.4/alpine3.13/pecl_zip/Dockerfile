FROM php:7.4-alpine3.13

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-zip
ARG PHPEXT_ZIP_VERSION=1.19.2
RUN set -eux; \
  persistentDeps=" \
    libzip \
  "; \
  buildDeps=" \
    libzip-dev \
  "; \
  apk add --no-cache --virtual .zip-persistent-deps ${persistentDeps}; \
  apk add --no-cache --virtual .zip-build-deps ${buildDeps}; \
  \
  pecl bundle -d /usr/src/php/ext zip-${PHPEXT_ZIP_VERSION}; \
  docker-php-ext-install -j$(nproc) zip; \
  \
  apk del --no-cache --no-network .zip-build-deps; \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
