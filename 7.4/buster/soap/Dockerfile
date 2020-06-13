FROM php:7.4-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# soap
RUN set -eux; \
  persistentDeps=" \
    libxml2 \
  "; \
  buildDeps=" \
    libxml2-dev \
  "; \
  DEBIAN_FRONTEND=noninteractive apt-get update; \
  DEBIAN_FRONTEND=noninteractive apt-get install -y $persistentDeps $buildDeps --no-install-recommends; \
  docker-php-ext-install -j$(nproc) soap; \
  DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps; \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
