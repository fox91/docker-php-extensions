FROM php:8.1-bookworm

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-mcrypt
ARG PHPEXT_MCRYPT_VERSION=1.0.6
RUN set -eux; \
  persistentDeps=" \
    libmcrypt4 \
  "; \
  buildDeps=" \
    libmcrypt-dev \
  "; \
  DEBIAN_FRONTEND=noninteractive apt-get update; \
  DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    ${persistentDeps} \
    ${buildDeps} \
  ; \
  \
  pecl bundle -d /usr/src/php/ext mcrypt-${PHPEXT_MCRYPT_VERSION}; \
  docker-php-ext-install -j$(nproc) mcrypt; \
  \
  DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove \
    -o APT::AutoRemove::RecommendsImportant=false \
    -o APT::AutoRemove::SuggestsImportant=false \
    ${buildDeps} \
  ; \
  docker-php-source delete; \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
