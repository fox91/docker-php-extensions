FROM php:7.4-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-lua
ARG LUA_VERSION=5.3
ARG PHPEXT_LUA_VERSION=2.0.7
RUN set -eux; \
  persistentDeps=" \
    liblua${LUA_VERSION}-0 \
  "; \
  buildDeps=" \
    liblua${LUA_VERSION}-dev \
  "; \
  DEBIAN_FRONTEND=noninteractive apt-get update; \
  DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    ${persistentDeps} \
    ${buildDeps} \
  ; \
  \
  pecl bundle -d /usr/src/php/ext lua-${PHPEXT_LUA_VERSION}; \
  docker-php-ext-configure lua \
    --with-lua-version=${LUA_VERSION} \
  ; \
  docker-php-ext-install -j$(nproc) lua; \
  \
  DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove \
    -o APT::AutoRemove::RecommendsImportant=false \
    -o APT::AutoRemove::SuggestsImportant=false \
    ${buildDeps} \
  ; \
  docker-php-source delete; \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
