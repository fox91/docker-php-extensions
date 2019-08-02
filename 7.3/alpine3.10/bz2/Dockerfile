FROM php:7.3-alpine3.10

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# bz2
# https://github.com/docker-library/php/issues/512#issuecomment-339448094
RUN set -ex; \
  persistentDeps=" \
    bzip2 \
    bzip2-dev \
  "; \
  apk add --no-cache --virtual .bz2-persistent-deps $persistentDeps; \
  docker-php-ext-install -j$(nproc) bz2
