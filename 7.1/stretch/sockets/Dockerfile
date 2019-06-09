FROM php:7.1-stretch

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# sockets
RUN docker-php-ext-install -j$(nproc) sockets
