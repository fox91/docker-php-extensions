FROM php:7.3-alpine3.10

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ENV PECL_REDIS_VERSION 5.0.2

# pecl install redis
RUN buildDeps=" \
    ${PHPIZE_DEPS} \
  "; \
  apk add --no-cache --virtual .redis-build-deps $buildDeps; \
  pecl install redis-$PECL_REDIS_VERSION; \
  docker-php-ext-enable redis; \
  apk del .redis-build-deps
