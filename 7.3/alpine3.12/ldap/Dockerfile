FROM php:7.3-alpine3.12

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# ldap
RUN set -ex; \
  persistentDeps=" \
    libldap \
  "; \
  buildDeps=" \
    openldap-dev \
  "; \
  apk add --no-cache --virtual .ldap-persistent-deps $persistentDeps; \
  apk add --no-cache --virtual .ldap-build-deps $buildDeps; \
  docker-php-ext-install -j$(nproc) ldap; \
  apk del .ldap-build-deps
