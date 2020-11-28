FROM php:8.0-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# bcmath
RUN docker-php-ext-install -j$(nproc) bcmath
