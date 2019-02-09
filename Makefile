.PHONY: 7.1 7.2

7.1: 7.1-stretch

7.2: 7.2-stretch 7.2-alpine3.9

stretch: 7.1-stretch 7.2-stretch

alpine3.9: 7.2-alpine3.9

7.1-stretch:
	docker build -t my/php:7.1-stretch-bcmath 7.1/stretch/bcmath
	docker build -t my/php:7.1-stretch-gd 7.1/stretch/gd
	docker build -t my/php:7.1-stretch-intl 7.1/stretch/intl
	docker build -t my/php:7.1-stretch-mbstring 7.1/stretch/mbstring
	docker build -t my/php:7.1-stretch-mcrypt 7.1/stretch/mcrypt
	docker build -t my/php:7.1-stretch-mysqli 7.1/stretch/mysqli
	docker build -t my/php:7.1-stretch-pdo_mysql 7.1/stretch/pdo_mysql
	docker build -t my/php:7.1-stretch-pdo_pgsql 7.1/stretch/pdo_pgsql
	docker build -t my/php:7.1-stretch-pecl_mongodb 7.1/stretch/pecl_mongodb
	docker build -t my/php:7.1-stretch-pecl_redis 7.1/stretch/pecl_redis
	docker build -t my/php:7.1-stretch-snmp 7.1/stretch/snmp
	docker build -t my/php:7.1-stretch-soap 7.1/stretch/soap
	docker build -t my/php:7.1-stretch-sockets 7.1/stretch/sockets

7.2-stretch:
	docker build -t my/php:7.2-stretch-bcmath 7.2/stretch/bcmath
	docker build -t my/php:7.2-stretch-gd 7.2/stretch/gd
	docker build -t my/php:7.2-stretch-intl 7.2/stretch/intl
	docker build -t my/php:7.2-stretch-mbstring 7.2/stretch/mbstring
	docker build -t my/php:7.2-stretch-mysqli 7.2/stretch/mysqli
	docker build -t my/php:7.2-stretch-opcache 7.2/stretch/opcache
	docker build -t my/php:7.2-stretch-pdo_mysql 7.2/stretch/pdo_mysql
	docker build -t my/php:7.2-stretch-pdo_pgsql 7.2/stretch/pdo_pgsql
	docker build -t my/php:7.2-stretch-pecl_apcu 7.2/stretch/pecl_apcu
	docker build -t my/php:7.2-stretch-pecl_mcrypt 7.2/stretch/pecl_mcrypt
	docker build -t my/php:7.2-stretch-pecl_mongodb 7.2/stretch/pecl_mongodb
	docker build -t my/php:7.2-stretch-pecl_redis 7.2/stretch/pecl_redis
	docker build -t my/php:7.2-stretch-pecl_xdebug 7.2/stretch/pecl_xdebug
	docker build -t my/php:7.2-stretch-snmp 7.2/stretch/snmp
	docker build -t my/php:7.2-stretch-soap 7.2/stretch/soap
	docker build -t my/php:7.2-stretch-sockets 7.2/stretch/sockets

7.2-alpine3.9:
	docker build -t my/php:7.2-alpine3.9-bcmath 7.2/alpine3.9/bcmath
	docker build -t my/php:7.2-alpine3.9-gd 7.2/alpine3.9/gd
	docker build -t my/php:7.2-alpine3.9-intl 7.2/alpine3.9/intl
	docker build -t my/php:7.2-alpine3.9-mbstring 7.2/alpine3.9/mbstring
	docker build -t my/php:7.2-alpine3.9-mysqli 7.2/alpine3.9/mysqli
	docker build -t my/php:7.2-alpine3.9-opcache 7.2/alpine3.9/opcache
	docker build -t my/php:7.2-alpine3.9-pdo_mysql 7.2/alpine3.9/pdo_mysql
	docker build -t my/php:7.2-alpine3.9-pdo_pgsql 7.2/alpine3.9/pdo_pgsql
	docker build -t my/php:7.2-alpine3.9-pecl_apcu 7.2/alpine3.9/pecl_apcu
	docker build -t my/php:7.2-alpine3.9-pecl_mcrypt 7.2/alpine3.9/pecl_mcrypt
	docker build -t my/php:7.2-alpine3.9-pecl_mongodb 7.2/alpine3.9/pecl_mongodb
	docker build -t my/php:7.2-alpine3.9-pecl_redis 7.2/alpine3.9/pecl_redis
	docker build -t my/php:7.2-alpine3.9-pecl_xdebug 7.2/alpine3.9/pecl_xdebug
	docker build -t my/php:7.2-alpine3.9-snmp 7.2/alpine3.9/snmp
	docker build -t my/php:7.2-alpine3.9-soap 7.2/alpine3.9/soap
	docker build -t my/php:7.2-alpine3.9-sockets 7.2/alpine3.9/sockets
