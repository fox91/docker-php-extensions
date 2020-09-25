FROM php:7.4-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# pdo_dblib
RUN docker-php-ext-install -j$(nproc) pdo_dblib
