FROM php:8.3-alpine3.20

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# PHP ext-bcmath
RUN docker-php-ext-install -j$(nproc) bcmath
