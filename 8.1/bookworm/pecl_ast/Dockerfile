FROM php:8.1-bookworm

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-ast
ARG PHPEXT_AST_VERSION=1.1.1
RUN set -eux; \
  pecl bundle -d /usr/src/php/ext ast-${PHPEXT_AST_VERSION}; \
  docker-php-ext-install -j$(nproc) ast; \
  \
  docker-php-source delete; \
  rm -rf /tmp/* /var/tmp/*
