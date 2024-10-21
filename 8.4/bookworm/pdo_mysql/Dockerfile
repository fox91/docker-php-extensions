FROM php:8.4-rc-bookworm

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-pdo_mysql
RUN docker-php-ext-install -j$(nproc) pdo_mysql
