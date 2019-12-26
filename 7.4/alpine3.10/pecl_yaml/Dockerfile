FROM php:7.4-alpine3.10

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ENV PECL_YAML_VERSION 2.0.4

# pecl install yaml
RUN set -ex; \
  persistentDeps=" \
    yaml \
  "; \
  buildDeps=" \
    ${PHPIZE_DEPS} \
    yaml-dev \
  "; \
  apk add --no-cache --virtual .yaml-persistent-deps $persistentDeps; \
  apk add --no-cache --virtual .yaml-build-deps $buildDeps; \
  pecl install yaml-$PECL_YAML_VERSION; \
  docker-php-ext-enable yaml; \
  apk del .yaml-build-deps
