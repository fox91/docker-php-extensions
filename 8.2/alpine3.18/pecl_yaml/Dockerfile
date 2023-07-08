FROM php:8.2-alpine3.18

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-yaml
ARG PHPEXT_YAML_VERSION=2.2.3
RUN set -eux; \
  persistentDeps=" \
    yaml \
  "; \
  buildDeps=" \
    yaml-dev \
  "; \
  apk add --no-cache --virtual .yaml-persistent-deps ${persistentDeps}; \
  apk add --no-cache --virtual .yaml-build-deps ${buildDeps}; \
  \
  pecl bundle -d /usr/src/php/ext yaml-${PHPEXT_YAML_VERSION}; \
  docker-php-ext-install -j$(nproc) yaml; \
  \
  apk del --no-cache --no-network .yaml-build-deps; \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
