FROM php:8.3-alpine3.18

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-sockets
RUN set -eux; \
  buildDeps=" \
    linux-headers \
  "; \
  \
  apk add --no-cache --virtual .xdebug-build-deps ${buildDeps}; \
  \
  docker-php-ext-install -j$(nproc) sockets; \
  \
  apk del --no-cache --no-network .xdebug-build-deps; \
  rm -rf /tmp/* /var/tmp/*
