FROM php:8.2-alpine3.18

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-phpiredis
ARG PHPEXT_PHPIREDIS_VERSION=1.1
RUN set -eux; \
  persistentDeps=" \
    hiredis \
  "; \
  buildDeps=" \
    hiredis-dev \
  "; \
  apk add --no-cache --virtual .phpiredis-persistent-deps ${persistentDeps}; \
  apk add --no-cache --virtual .phpiredis-build-deps ${buildDeps}; \
  \
  mkdir -p /usr/src/php/ext/phpiredis; \
  curl -fsSL https://github.com/nrk/phpiredis/archive/refs/heads/v${PHPEXT_PHPIREDIS_VERSION}.tar.gz \
    | tar -xzC "/usr/src/php/ext/phpiredis" --strip 1; \
  \
  docker-php-ext-configure phpiredis \
    --enable-phpiredis \
  ; \
  docker-php-ext-install -j$(nproc) phpiredis; \
  \
  apk del --no-cache --no-network .phpiredis-build-deps; \
  docker-php-source delete; \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
