FROM php:8.3-alpine3.18

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-var_representation
ARG PHPEXT_VAR_REPRESENTATION_VERSION=0.1.4
RUN set -eux; \
  pecl bundle -d /usr/src/php/ext var_representation-${PHPEXT_VAR_REPRESENTATION_VERSION}; \
  docker-php-ext-install -j$(nproc) var_representation; \
  \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
