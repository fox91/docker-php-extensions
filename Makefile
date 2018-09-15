.PHONY: 5.6 7.0 7.1 7.2

5.6: 5.6-stretch

7.0: 7.0-stretch

7.1: 7.1-stretch

stretch: 5.6-stretch 7.0-stretch 7.1-stretch

5.6-stretch:
	docker build -t my/php:5.6-stretch-bcmath 5.6/stretch/bcmath
	docker build -t my/php:5.6-stretch-gd 5.6/stretch/gd
	docker build -t my/php:5.6-stretch-intl 5.6/stretch/intl
	docker build -t my/php:5.6-stretch-mbstring 5.6/stretch/mbstring
	docker build -t my/php:5.6-stretch-mcrypt 5.6/stretch/mcrypt
	docker build -t my/php:5.6-stretch-mysqli 5.6/stretch/mysqli
	docker build -t my/php:5.6-stretch-pdo_mysql 5.6/stretch/pdo_mysql
	docker build -t my/php:5.6-stretch-pdo_pgsql 5.6/stretch/pdo_pgsql
	docker build -t my/php:5.6-stretch-pecl_mongodb 5.6/stretch/pecl_mongodb
	docker build -t my/php:5.6-stretch-pecl_redis 5.6/stretch/pecl_redis
	docker build -t my/php:5.6-stretch-pecl_spltypes 5.6/stretch/pecl_spltypes
	docker build -t my/php:5.6-stretch-snmp 5.6/stretch/snmp
	docker build -t my/php:5.6-stretch-soap 5.6/stretch/soap
	docker build -t my/php:5.6-stretch-sockets 5.6/stretch/sockets

7.0-stretch:
	docker build -t my/php:7.0-stretch-bcmath 7.0/stretch/bcmath
	docker build -t my/php:7.0-stretch-gd 7.0/stretch/gd
	docker build -t my/php:7.0-stretch-intl 7.0/stretch/intl
	docker build -t my/php:7.0-stretch-mbstring 7.0/stretch/mbstring
	docker build -t my/php:7.0-stretch-mcrypt 7.0/stretch/mcrypt
	docker build -t my/php:7.0-stretch-mysqli 7.0/stretch/mysqli
	docker build -t my/php:7.0-stretch-pdo_mysql 7.0/stretch/pdo_mysql
	docker build -t my/php:7.0-stretch-pdo_pgsql 7.0/stretch/pdo_pgsql
	docker build -t my/php:7.0-stretch-pecl_mongodb 7.0/stretch/pecl_mongodb
	docker build -t my/php:7.0-stretch-pecl_redis 7.0/stretch/pecl_redis
	docker build -t my/php:7.0-stretch-snmp 7.0/stretch/snmp
	docker build -t my/php:7.0-stretch-soap 7.0/stretch/soap
	docker build -t my/php:7.0-stretch-sockets 7.0/stretch/sockets

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