FROM php:8.2-alpine3.18

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-bz2
# https://github.com/docker-library/php/issues/512#issuecomment-339448094
RUN set -eux; \
  persistentDeps=" \
    bzip2 \
    bzip2-dev \
  "; \
  apk add --no-cache --virtual .bz2-persistent-deps ${persistentDeps}; \
  \
  docker-php-ext-install -j$(nproc) bz2
