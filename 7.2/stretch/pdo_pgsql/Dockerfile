FROM php:7.2-stretch
MAINTAINER Andrea Falco <fox91fox@gmail.com>

# pdo_pgsql
RUN set -ex; \
  persistentDeps=" \
    libpq5 \
  "; \
  buildDeps=" \
    libpq-dev \
  "; \
  DEBIAN_FRONTEND=noninteractive apt-get update; \
  DEBIAN_FRONTEND=noninteractive apt-get install -y $persistentDeps $buildDeps --no-install-recommends; \
  docker-php-ext-install -j$(nproc) pdo_pgsql; \
  DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps; \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
