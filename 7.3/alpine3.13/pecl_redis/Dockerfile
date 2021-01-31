FROM php:7.3-alpine3.13

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ARG PECL_REDIS_VERSION=5.3.2

# pecl install redis
RUN set -eux; \
  buildDeps=" \
    ${PHPIZE_DEPS} \
  "; \
  apk add --no-cache --virtual .redis-build-deps $buildDeps; \
  pecl install redis-$PECL_REDIS_VERSION; \
  rm -rf /tmp/* /var/tmp/*; \
  docker-php-ext-enable redis; \
  apk del .redis-build-deps
