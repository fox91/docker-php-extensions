FROM php:7.4-buster

LABEL maintainer="Andrea Falco <andrea@falco.sh>"

# zend_test
RUN docker-php-ext-install -j$(nproc) zend_test
