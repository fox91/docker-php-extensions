FROM php:7.3-alpine3.14

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-pdo_mysql
RUN docker-php-ext-install -j$(nproc) pdo_mysql
