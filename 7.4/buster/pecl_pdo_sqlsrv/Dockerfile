FROM php:7.4-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-pdo_sqlsrv
ARG PHPEXT_PDO_SQLSRV_VERSION=5.9.0
RUN set -eux; \
  persistentDeps=" \
    unixodbc \
  "; \
  buildDeps=" \
    unixodbc-dev \
  "; \
  DEBIAN_FRONTEND=noninteractive apt-get update; \
  DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    ${persistentDeps} \
    ${buildDeps} \
  ; \
  \
  pecl bundle -d /usr/src/php/ext pdo_sqlsrv-${PHPEXT_PDO_SQLSRV_VERSION}; \
  docker-php-ext-install -j$(nproc) pdo_sqlsrv; \
  \
  DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove \
    -o APT::AutoRemove::RecommendsImportant=false \
    -o APT::AutoRemove::SuggestsImportant=false \
    ${buildDeps} \
  ; \
  docker-php-source delete; \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
