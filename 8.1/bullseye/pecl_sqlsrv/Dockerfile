FROM php:8.1-bullseye

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-sqlsrv
ARG PHPEXT_SQLSRV_VERSION=5.10.0
RUN set -eux; \
  aptDeps=" \
    gnupg \
  "; \
  DEBIAN_FRONTEND=noninteractive apt-get update; \
  DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    ${aptDeps} \
  ; \
  \
  curl -fsSL https://packages.microsoft.com/keys/microsoft.asc | apt-key add -; \
  curl -fsSL https://packages.microsoft.com/config/debian/11/prod.list > /etc/apt/sources.list.d/mssql-release.list; \
  echo "msodbcsql18 msodbcsql/ACCEPT_EULA boolean true" | debconf-set-selections; \
  \
  DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove \
    -o APT::AutoRemove::RecommendsImportant=false \
    -o APT::AutoRemove::SuggestsImportant=false \
    ${aptDeps} \
  ; \
  \
  persistentDeps=" \
    msodbcsql18 \
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
  pecl bundle -d /usr/src/php/ext sqlsrv-${PHPEXT_SQLSRV_VERSION}; \
  docker-php-ext-install -j$(nproc) sqlsrv; \
  \
  DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove \
    -o APT::AutoRemove::RecommendsImportant=false \
    -o APT::AutoRemove::SuggestsImportant=false \
    ${buildDeps} \
  ; \
  docker-php-source delete; \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
