FROM php:7.3-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ARG PECL_MEMCACHE_VERSION=4.0.5.2

# pecl install memcache
RUN set -eux; \
  persistentDeps=" \
    libzip4 \
  "; \
  buildDeps=" \
    libzip-dev \
  "; \
  DEBIAN_FRONTEND=noninteractive apt-get update; \
  DEBIAN_FRONTEND=noninteractive apt-get install -y $persistentDeps $buildDeps --no-install-recommends; \
  pecl install memcache-$PECL_MEMCACHE_VERSION; \
  docker-php-ext-enable memcache; \
  DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps; \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
