FROM php:7.2-alpine3.12

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ARG PECL_TIMEZONEDB_VERSION=2020.1

# pecl install timezonedb
RUN set -eux; \
  buildDeps=" \
    ${PHPIZE_DEPS} \
  "; \
  apk add --no-cache --virtual .timezonedb-build-deps $buildDeps; \
  pecl install timezonedb-$PECL_TIMEZONEDB_VERSION; \
  rm -rf /tmp/* /var/tmp/*; \
  docker-php-ext-enable timezonedb; \
  apk del .timezonedb-build-deps
