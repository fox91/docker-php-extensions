FROM php:8.2-bookworm

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-uuid
ARG PHPEXT_UUID_VERSION=1.2.0
RUN set -eux; \
  buildDeps=" \
    uuid-dev \
  "; \
  DEBIAN_FRONTEND=noninteractive apt-get update; \
  DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    ${buildDeps} \
  ; \
  \
  pecl bundle -d /usr/src/php/ext uuid-${PHPEXT_UUID_VERSION}; \
  docker-php-ext-install -j$(nproc) uuid; \
  \
  DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove \
    -o APT::AutoRemove::RecommendsImportant=false \
    -o APT::AutoRemove::SuggestsImportant=false \
    ${buildDeps} \
  ; \
  docker-php-source delete; \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
