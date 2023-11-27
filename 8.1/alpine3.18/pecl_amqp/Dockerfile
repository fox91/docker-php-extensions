FROM php:8.1-alpine3.18

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-amqp
ARG PHPEXT_AMQP_VERSION=2.1.1
RUN set -eux; \
  persistentDeps=" \
    rabbitmq-c \
  "; \
  buildDeps=" \
    rabbitmq-c-dev \
  "; \
  apk add --no-cache --virtual .amqp-persistent-deps ${persistentDeps}; \
  apk add --no-cache --virtual .amqp-build-deps ${buildDeps}; \
  \
  pecl bundle -d /usr/src/php/ext amqp-${PHPEXT_AMQP_VERSION}; \
  docker-php-ext-install -j$(nproc) amqp; \
  \
  apk del --no-cache --no-network .amqp-build-deps; \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
