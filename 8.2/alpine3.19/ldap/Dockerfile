FROM php:8.2-alpine3.19

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-ldap
RUN set -eux; \
  persistentDeps=" \
    libldap \
  "; \
  buildDeps=" \
    openldap-dev \
  "; \
  apk add --no-cache --virtual .ldap-persistent-deps ${persistentDeps}; \
  apk add --no-cache --virtual .ldap-build-deps ${buildDeps}; \
  \
  docker-php-ext-install -j$(nproc) ldap; \
  \
  apk del --no-cache --no-network .ldap-build-deps
