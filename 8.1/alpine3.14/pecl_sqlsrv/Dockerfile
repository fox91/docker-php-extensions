FROM php:8.1-alpine3.14

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-sqlsrv
ARG PHPEXT_SQLSRV_VERSION=5.10.0beta2
RUN set -eux; \
  apkDeps=" \
    gnupg \
  "; \
  apk add --no-cache --virtual .sqlsrv-apk-deps ${apkDeps}; \
  \
  cd /tmp; \
  curl -fsSL -O https://download.microsoft.com/download/e/4/e/e4e67866-dffd-428c-aac7-8d28ddafb39b/msodbcsql17_17.8.1.1-1_amd64.apk; \
  curl -fsSL -O https://download.microsoft.com/download/e/4/e/e4e67866-dffd-428c-aac7-8d28ddafb39b/msodbcsql17_17.8.1.1-1_amd64.sig; \
  curl -fsSL https://packages.microsoft.com/keys/microsoft.asc | gpg --import -; \
  gpg --verify msodbcsql17_17.8.1.1-1_amd64.sig msodbcsql17_17.8.1.1-1_amd64.apk; \
  \
  apk del --no-cache --no-network .sqlsrv-apk-deps; \
  apk add --allow-untrusted msodbcsql17_17.8.1.1-1_amd64.apk; \
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
