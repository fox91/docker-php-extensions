FROM php:8.0-alpine3.15

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-sqlsrv
ARG PHPEXT_SQLSRV_VERSION=5.10.1
RUN set -eux; \
  apkDeps=" \
    gnupg \
  "; \
  apk add --no-cache --virtual .sqlsrv-apk-deps ${apkDeps}; \
  \
  cd /tmp; \
  curl -fsSL -O https://download.microsoft.com/download/b/9/f/b9f3cce4-3925-46d4-9f46-da08869c6486/msodbcsql18_18.0.1.1-1_amd64.apk; \
  curl -fsSL -O https://download.microsoft.com/download/b/9/f/b9f3cce4-3925-46d4-9f46-da08869c6486/msodbcsql18_18.0.1.1-1_amd64.sig; \
  curl -fsSL https://packages.microsoft.com/keys/microsoft.asc | gpg --import -; \
  gpg --verify msodbcsql18_18.0.1.1-1_amd64.sig msodbcsql18_18.0.1.1-1_amd64.apk; \
  \
  apk del --no-cache --no-network .sqlsrv-apk-deps; \
  apk add --allow-untrusted msodbcsql18_18.0.1.1-1_amd64.apk; \
  \
  buildDeps=" \
    unixodbc-dev \
  "; \
  apk add --no-cache --virtual .sqlsrv-build-deps ${buildDeps}; \
  \
  pecl bundle -d /usr/src/php/ext sqlsrv-${PHPEXT_SQLSRV_VERSION}; \
  docker-php-ext-install -j$(nproc) sqlsrv; \
  \
  apk del --no-cache --no-network .sqlsrv-build-deps; \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
