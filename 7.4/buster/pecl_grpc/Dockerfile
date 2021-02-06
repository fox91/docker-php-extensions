FROM php:7.4-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ARG PHPEXT_GRPC_VERSION=1.35.0

# PHP ext-grpc
RUN set -eux; \
  buildDeps=" \
    libzip-dev \
  "; \
  DEBIAN_FRONTEND=noninteractive apt-get update; \
  DEBIAN_FRONTEND=noninteractive apt-get install -y $buildDeps --no-install-recommends; \
  \
  pecl install grpc-${PHPEXT_GRPC_VERSION}; \
  docker-php-ext-enable grpc; \
  \
  DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps; \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
