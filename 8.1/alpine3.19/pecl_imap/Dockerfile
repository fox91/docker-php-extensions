FROM php:8.1-alpine3.19

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-imap
ARG PHPEXT_IMAP_VERSION=1.0.2
RUN set -eux; \
  persistentDeps=" \
    c-client \
  "; \
  buildDeps=" \
    imap-dev \
    krb5-dev \
    openssl-dev \
  "; \
  apk add --no-cache --virtual .imap-persistent-deps ${persistentDeps}; \
  apk add --no-cache --virtual .imap-build-deps ${buildDeps}; \
  \
  pecl bundle -d /usr/src/php/ext imap-${PHPEXT_IMAP_VERSION}; \
  docker-php-ext-configure imap \
    --with-imap-ssl \
    --with-kerberos \
  ; \
  docker-php-ext-install -j$(nproc) imap; \
  \
  apk del --no-cache --no-network .imap-build-deps; \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
