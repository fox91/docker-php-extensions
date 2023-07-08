FROM php:8.1-bookworm

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-intl
RUN set -eux; \
  persistentDeps=" \
    libicu72 \
  "; \
  buildDeps=" \
    libicu-dev \
  "; \
  DEBIAN_FRONTEND=noninteractive apt-get update; \
  DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    ${persistentDeps} \
    ${buildDeps} \
  ; \
  \
  docker-php-ext-install -j$(nproc) intl; \
  \
  DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove \
    -o APT::AutoRemove::RecommendsImportant=false \
    -o APT::AutoRemove::SuggestsImportant=false \
    ${buildDeps} \
  ; \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
