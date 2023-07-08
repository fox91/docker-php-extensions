FROM php:8.2-alpine3.18

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-mcrypt
ARG PHPEXT_MCRYPT_VERSION=1.0.6
RUN set -eux; \
  persistentDeps=" \
    libmcrypt \
  "; \
  buildDeps=" \
    libmcrypt-dev \
  "; \
  apk add --no-cache --virtual .mcrypt-persistent-deps ${persistentDeps}; \
  apk add --no-cache --virtual .mcrypt-build-deps ${buildDeps}; \
  \
  pecl bundle -d /usr/src/php/ext mcrypt-${PHPEXT_MCRYPT_VERSION}; \
  docker-php-ext-install -j$(nproc) mcrypt; \
  \
  apk del --no-cache --no-network .mcrypt-build-deps; \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
