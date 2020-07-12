FROM php:7.2-alpine3.12

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ENV PECL_REDIS_VERSION 5.3.1

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
