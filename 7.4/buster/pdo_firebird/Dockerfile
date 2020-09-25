FROM php:7.4-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# pdo_firebird
RUN docker-php-ext-install -j$(nproc) pdo_firebird
