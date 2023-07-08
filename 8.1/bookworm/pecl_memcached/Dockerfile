FROM php:8.1-bookworm

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-memcached
ARG PHPEXT_MEMCACHED_VERSION=3.2.0
RUN set -eux; \
  persistentDeps=" \
    libmemcached11 \
    libmemcachedutil2 \
    libzip4 \
  "; \
  buildDeps=" \
    libmemcached-dev \
    libssl-dev \
    libzip-dev \
  "; \
  DEBIAN_FRONTEND=noninteractive apt-get update; \
  DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    ${persistentDeps} \
    ${buildDeps} \
  ; \
  \
  pecl bundle -d /usr/src/php/ext memcached-${PHPEXT_MEMCACHED_VERSION}; \
  docker-php-ext-install -j$(nproc) memcached; \
  \
  DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove \
    -o APT::AutoRemove::RecommendsImportant=false \
    -o APT::AutoRemove::SuggestsImportant=false \
    ${buildDeps} \
  ; \
  docker-php-source delete; \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
