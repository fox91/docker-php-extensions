FROM php:7.2-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# gmp
RUN set -eux; \
  persistentDeps=" \
    libgmp10 \
  "; \
  buildDeps=" \
    libgmp-dev \
  "; \
  DEBIAN_FRONTEND=noninteractive apt-get update; \
  DEBIAN_FRONTEND=noninteractive apt-get install -y $persistentDeps $buildDeps --no-install-recommends; \
  docker-php-ext-install -j$(nproc) gmp; \
  DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps; \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
