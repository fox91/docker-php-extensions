FROM php:8.4-rc-bookworm

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-sockets
RUN docker-php-ext-install -j$(nproc) sockets
