FROM php:7.4-alpine3.14

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-sockets
RUN docker-php-ext-install -j$(nproc) sockets
