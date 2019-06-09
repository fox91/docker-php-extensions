FROM php:7.2-stretch

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# bz2
RUN set -ex; \
  persistentDeps=" \
    libbz2-1.0 \
  "; \
  buildDeps=" \
    libbz2-dev \
  "; \
  DEBIAN_FRONTEND=noninteractive apt-get update; \
  DEBIAN_FRONTEND=noninteractive apt-get install -y $persistentDeps $buildDeps --no-install-recommends; \
  docker-php-ext-install -j$(nproc) bz2; \
  DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps; \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
