FROM php:8.3-alpine3.18

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-fann
ARG PHPEXT_FANN_VERSION=1.2.0RC2
RUN set -eux; \
  persistentDeps=" \
    fann \
  "; \
  buildDeps=" \
    fann-dev \
  "; \
  apk add --no-cache --virtual .fann-persistent-deps ${persistentDeps}; \
  apk add --no-cache --virtual .fann-build-deps ${buildDeps}; \
  \
  pecl bundle -d /usr/src/php/ext fann-${PHPEXT_FANN_VERSION}; \
  docker-php-ext-install -j$(nproc) fann; \
  \
  apk del --no-cache --no-network .fann-build-deps; \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
