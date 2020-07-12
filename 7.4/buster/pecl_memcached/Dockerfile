FROM php:7.4-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ARG PECL_MEMCACHED_VERSION=3.1.5

# pecl install memcached
RUN set -eux; \
  persistentDeps=" \
    libmemcached11 \
    libmemcachedutil2 \
    libzip4 \
  "; \
  buildDeps=" \
    libmemcached-dev \
    libzip-dev \
  "; \
  DEBIAN_FRONTEND=noninteractive apt-get update; \
  DEBIAN_FRONTEND=noninteractive apt-get install -y $persistentDeps $buildDeps --no-install-recommends; \
  pecl install memcached-$PECL_MEMCACHED_VERSION; \
  docker-php-ext-enable memcached; \
  DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps; \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
