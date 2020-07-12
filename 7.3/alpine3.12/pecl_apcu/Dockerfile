FROM php:7.3-alpine3.12

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ENV PECL_APCU_VERSION 5.1.18

# pecl install apcu
RUN set -eux; \
  buildDeps=" \
    ${PHPIZE_DEPS} \
  "; \
  apk add --no-cache --virtual .apcu-build-deps $buildDeps; \
  pecl install apcu-$PECL_APCU_VERSION; \
  rm -rf /tmp/* /var/tmp/*; \
  docker-php-ext-enable apcu; \
  apk del .apcu-build-deps
