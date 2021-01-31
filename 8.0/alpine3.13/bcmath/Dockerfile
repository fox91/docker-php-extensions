FROM php:8.0-alpine3.13

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# bcmath
RUN docker-php-ext-install -j$(nproc) bcmath
