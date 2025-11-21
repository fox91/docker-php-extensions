FROM php:8.5-trixie

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-zip
ARG PHPEXT_ZIP_VERSION=1.22.7
RUN set -eux; \
  persistentDeps=" \
    libzip5 \
  "; \
  buildDeps=" \
    libzip-dev \
  "; \
  DEBIAN_FRONTEND=noninteractive apt-get update; \
  DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    ${persistentDeps} \
    ${buildDeps} \
  ; \
  \
  pecl bundle -d /usr/src/php/ext zip-${PHPEXT_ZIP_VERSION}; \
  docker-php-ext-install -j$(nproc) zip; \
  \
  DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove \
    -o APT::AutoRemove::RecommendsImportant=false \
    -o APT::AutoRemove::SuggestsImportant=false \
    ${buildDeps} \
  ; \
  docker-php-source delete; \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
