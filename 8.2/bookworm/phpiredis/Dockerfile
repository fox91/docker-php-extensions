FROM php:8.2-bookworm

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-phpiredis
ARG PHPEXT_PHPIREDIS_VERSION=1.0.1
RUN set -eux; \
  persistentDeps=" \
    libhiredis0.14 \
  "; \
  buildDeps=" \
    libhiredis-dev \
  "; \
  DEBIAN_FRONTEND=noninteractive apt-get update; \
  DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    ${persistentDeps} \
    ${buildDeps} \
  ; \
  \
  mkdir -p /usr/src/php/ext/phpiredis; \
  curl -fsSL https://github.com/nrk/phpiredis/archive/v${PHPEXT_PHPIREDIS_VERSION}.tar.gz \
    | tar -xzC "/usr/src/php/ext/phpiredis" --strip 1; \
  \
  docker-php-ext-configure phpiredis \
    --enable-phpiredis \
  ; \
  docker-php-ext-install -j$(nproc) phpiredis; \
  \
  DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove \
    -o APT::AutoRemove::RecommendsImportant=false \
    -o APT::AutoRemove::SuggestsImportant=false \
    ${buildDeps} \
  ; \
  docker-php-source delete; \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
