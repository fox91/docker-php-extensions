FROM php:8.2-bookworm

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-imap
RUN set -eux; \
  buildDeps=" \
    libc-client-dev \
    libkrb5-dev \
  "; \
  DEBIAN_FRONTEND=noninteractive apt-get update; \
  DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    ${buildDeps} \
  ; \
  \
  docker-php-ext-configure imap \
    --with-imap-ssl \
    --with-kerberos \
  ; \
  docker-php-ext-install -j$(nproc) imap; \
  \
  DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove \
    -o APT::AutoRemove::RecommendsImportant=false \
    -o APT::AutoRemove::SuggestsImportant=false \
    ${buildDeps} \
  ; \
  docker-php-source delete; \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
