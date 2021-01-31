FROM php:7.3-alpine3.12

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ARG PECL_YAML_VERSION=2.2.1

# pecl install yaml
RUN set -eux; \
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
  rm -rf /tmp/* /var/tmp/*; \
  docker-php-ext-enable yaml; \
  apk del .yaml-build-deps
