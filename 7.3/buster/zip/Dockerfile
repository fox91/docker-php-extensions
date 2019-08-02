FROM php:7.3-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# zip
RUN set -ex; \
  persistentDeps=" \
    libzip4 \
  "; \
  buildDeps=" \
    libzip-dev \
  "; \
  DEBIAN_FRONTEND=noninteractive apt-get update; \
  DEBIAN_FRONTEND=noninteractive apt-get install -y $persistentDeps $buildDeps --no-install-recommends; \
  docker-php-ext-install -j$(nproc) zip; \
  DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps; \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
