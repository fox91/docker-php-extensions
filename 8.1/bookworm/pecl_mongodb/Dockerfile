FROM php:8.1-bookworm

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-mongodb
ARG PHPEXT_MONGODB_VERSION=1.19.1
RUN set -eux; \
  buildDeps=" \
    libssl-dev \
  "; \
  DEBIAN_FRONTEND=noninteractive apt-get update; \
  DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    ${buildDeps} \
  ; \
  \
  pecl bundle -d /usr/src/php/ext mongodb-${PHPEXT_MONGODB_VERSION}; \
  docker-php-ext-install -j$(nproc) mongodb; \
  \
  DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove \
    -o APT::AutoRemove::RecommendsImportant=false \
    -o APT::AutoRemove::SuggestsImportant=false \
    ${buildDeps} \
  ; \
  docker-php-source delete; \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
