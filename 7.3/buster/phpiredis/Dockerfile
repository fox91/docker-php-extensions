FROM php:7.3-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ARG PHPIREDIS_VERSION=1.0.1

# PHP ext-phpiredis
RUN set -eux; \
  persistentDeps=" \
    libhiredis0.14 \
  "; \
  buildDeps=" \
    libhiredis-dev \
  "; \
  DEBIAN_FRONTEND=noninteractive apt-get update; \
  DEBIAN_FRONTEND=noninteractive apt-get install -y $persistentDeps $buildDeps --no-install-recommends; \
  \
  mkdir -p /usr/src/php/ext/phpiredis; \
  curl -fsSL https://github.com/nrk/phpiredis/archive/v${PHPIREDIS_VERSION}.tar.gz \
    | tar xz -C "/usr/src/php/ext/phpiredis" --strip 1; \
  \
  docker-php-ext-configure phpiredis --enable-phpiredis; \
  docker-php-ext-install phpiredis; \
  \
  DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps; \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
