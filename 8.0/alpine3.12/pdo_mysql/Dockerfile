FROM php:8.0-alpine3.12

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# pdo_mysql
RUN docker-php-ext-install -j$(nproc) pdo_mysql
