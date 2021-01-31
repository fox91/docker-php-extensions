FROM php:7.4-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ARG PECL_MCRYPT_VERSION=1.0.4

# pecl install mcrypt
RUN set -eux; \
  persistentDeps=" \
    libmcrypt4 \
  "; \
  buildDeps=" \
    libmcrypt-dev \
  "; \
  DEBIAN_FRONTEND=noninteractive apt-get update; \
  DEBIAN_FRONTEND=noninteractive apt-get install -y $persistentDeps $buildDeps --no-install-recommends; \
  pecl install mcrypt-$PECL_MCRYPT_VERSION; \
  docker-php-ext-enable mcrypt; \
  DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps; \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
