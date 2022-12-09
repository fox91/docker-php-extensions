FROM php:8.2-alpine3.17

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-pdo_mysql
RUN docker-php-ext-install -j$(nproc) pdo_mysql
