FROM php:7.4-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

ENV PECL_YAML_VERSION 2.0.4

# pecl install yaml
RUN set -ex; \
  persistentDeps=" \
    libyaml-0-2 \
  "; \
  buildDeps=" \
    libyaml-dev \
  "; \
  DEBIAN_FRONTEND=noninteractive apt-get update; \
  DEBIAN_FRONTEND=noninteractive apt-get install -y $persistentDeps $buildDeps --no-install-recommends; \
  pecl install yaml-$PECL_YAML_VERSION; \
  docker-php-ext-enable yaml; \
  DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps; \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
