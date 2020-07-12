FROM php:7.3-alpine3.12

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ARG PECL_IMAGICK_VERSION=3.4.4

# pecl install imagick
RUN set -eux; \
  persistentDeps=" \
    imagemagick-libs \
  "; \
  buildDeps=" \
    ${PHPIZE_DEPS} \
    imagemagick-dev \
  "; \
  apk add --no-cache --virtual .imagick-persistent-deps $persistentDeps; \
  apk add --no-cache --virtual .imagick-build-deps $buildDeps; \
  pecl install imagick-$PECL_IMAGICK_VERSION; \
  rm -rf /tmp/* /var/tmp/*; \
  docker-php-ext-enable imagick; \
  apk del .imagick-build-deps
