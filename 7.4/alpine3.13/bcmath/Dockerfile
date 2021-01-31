FROM php:7.4-alpine3.13

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# bcmath
RUN docker-php-ext-install -j$(nproc) bcmath
