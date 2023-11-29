FROM php:8.3-alpine3.18

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-imap
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
  docker-php-ext-configure imap \
    --with-imap-ssl \
    --with-kerberos \
  ; \
  docker-php-ext-install -j$(nproc) imap; \
  \
  apk del --no-cache --no-network .imap-build-deps
