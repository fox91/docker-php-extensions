FROM php:7.4-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# oci8
RUN docker-php-ext-install -j$(nproc) oci8
