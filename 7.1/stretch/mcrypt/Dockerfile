FROM php:7.1-stretch
MAINTAINER Andrea Falco <fox91fox@gmail.com>

# mcrypt
RUN set -ex; \
  persistentDeps=" \
    libmcrypt4 \
  "; \
  buildDeps=" \
    libmcrypt-dev \
  "; \
  DEBIAN_FRONTEND=noninteractive apt-get update; \
  DEBIAN_FRONTEND=noninteractive apt-get install -y $persistentDeps $buildDeps --no-install-recommends; \
  docker-php-ext-install -j$(nproc) mcrypt; \
  DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps; \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
