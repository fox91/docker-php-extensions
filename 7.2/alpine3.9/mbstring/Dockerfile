FROM php:7.2-alpine3.9

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# mbstring
RUN docker-php-ext-install -j$(nproc) mbstring
