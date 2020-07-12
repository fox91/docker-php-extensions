FROM php:7.2-alpine3.12

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ENV PECL_HRTIME_VERSION 0.6.0

# pecl install hrtime
RUN set -eux; \
  buildDeps=" \
    ${PHPIZE_DEPS} \
  "; \
  apk add --no-cache --virtual .hrtime-build-deps $buildDeps; \
  pecl install hrtime-$PECL_HRTIME_VERSION; \
  docker-php-ext-enable hrtime; \
  apk del .hrtime-build-deps
