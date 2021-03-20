FROM php:7.4-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-amqp
ARG PHPEXT_AMQP_VERSION=1.10.2
RUN set -eux; \
  persistentDeps=" \
    librabbitmq4 \
  "; \
  buildDeps=" \
    librabbitmq-dev \
  "; \
  DEBIAN_FRONTEND=noninteractive apt-get update; \
  DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    ${persistentDeps} \
    ${buildDeps} \
  ; \
  \
  pecl bundle -d /usr/src/php/ext amqp-${PHPEXT_AMQP_VERSION}; \
  docker-php-ext-install -j$(nproc) amqp; \
  \
  DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove \
    -o APT::AutoRemove::RecommendsImportant=false \
    -o APT::AutoRemove::SuggestsImportant=false \
    ${buildDeps} \
  ; \
  docker-php-source delete; \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
