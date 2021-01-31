FROM php:7.4-alpine3.13

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# pdo_mysql
RUN docker-php-ext-install -j$(nproc) pdo_mysql
