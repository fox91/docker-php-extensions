FROM php:7.3-alpine3.9

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# sockets
RUN docker-php-ext-install -j$(nproc) sockets
