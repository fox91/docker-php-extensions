FROM php:7.1-stretch

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# pdo_mysql
RUN docker-php-ext-install -j$(nproc) pdo_mysql
