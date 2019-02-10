.PHONY: 7.1 7.2 7.3

7.1: 7.1-stretch

7.2: 7.2-stretch 7.2-alpine3.9

7.3: 7.3-stretch 7.3-alpine3.9

stretch: 7.1-stretch 7.2-stretch 7.3-stretch

alpine3.9: 7.2-alpine3.9 7.3-alpine3.9

test-alpine3.9: test-7.2-alpine3.9 test-7.3-alpine3.9

7.1-stretch:
	docker build -t my/php:7.1-stretch-bcmath 7.1/stretch/bcmath
	docker build -t my/php:7.1-stretch-gd 7.1/stretch/gd
	docker build -t my/php:7.1-stretch-intl 7.1/stretch/intl
	docker build -t my/php:7.1-stretch-mbstring 7.1/stretch/mbstring
	docker build -t my/php:7.1-stretch-mcrypt 7.1/stretch/mcrypt
	docker build -t my/php:7.1-stretch-mysqli 7.1/stretch/mysqli
	docker build -t my/php:7.1-stretch-opcache 7.1/stretch/opcache
	docker build -t my/php:7.1-stretch-pdo_mysql 7.1/stretch/pdo_mysql
	docker build -t my/php:7.1-stretch-pdo_pgsql 7.1/stretch/pdo_pgsql
	docker build -t my/php:7.1-stretch-pecl_apcu 7.1/stretch/pecl_apcu
	docker build -t my/php:7.1-stretch-pecl_mongodb 7.1/stretch/pecl_mongodb
	docker build -t my/php:7.1-stretch-pecl_redis 7.1/stretch/pecl_redis
	docker build -t my/php:7.1-stretch-pecl_xdebug 7.1/stretch/pecl_xdebug
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

7.3-stretch:
	docker build -t my/php:7.3-stretch-bcmath 7.3/stretch/bcmath
	docker build -t my/php:7.3-stretch-gd 7.3/stretch/gd
	docker build -t my/php:7.3-stretch-intl 7.3/stretch/intl
	docker build -t my/php:7.3-stretch-mbstring 7.3/stretch/mbstring
	docker build -t my/php:7.3-stretch-mysqli 7.3/stretch/mysqli
	docker build -t my/php:7.3-stretch-opcache 7.3/stretch/opcache
	docker build -t my/php:7.3-stretch-pdo_mysql 7.3/stretch/pdo_mysql
	docker build -t my/php:7.3-stretch-pdo_pgsql 7.3/stretch/pdo_pgsql
	docker build -t my/php:7.3-stretch-pecl_apcu 7.3/stretch/pecl_apcu
	docker build -t my/php:7.3-stretch-pecl_mcrypt 7.3/stretch/pecl_mcrypt
	docker build -t my/php:7.3-stretch-pecl_mongodb 7.3/stretch/pecl_mongodb
	docker build -t my/php:7.3-stretch-pecl_redis 7.3/stretch/pecl_redis
	docker build -t my/php:7.3-stretch-snmp 7.3/stretch/snmp
	docker build -t my/php:7.3-stretch-soap 7.3/stretch/soap
	docker build -t my/php:7.3-stretch-sockets 7.3/stretch/sockets

7.3-alpine3.9:
	docker build -t my/php:7.3-alpine3.9-bcmath 7.3/alpine3.9/bcmath
	docker build -t my/php:7.3-alpine3.9-gd 7.3/alpine3.9/gd
	docker build -t my/php:7.3-alpine3.9-intl 7.3/alpine3.9/intl
	docker build -t my/php:7.3-alpine3.9-mbstring 7.3/alpine3.9/mbstring
	docker build -t my/php:7.3-alpine3.9-mysqli 7.3/alpine3.9/mysqli
	docker build -t my/php:7.3-alpine3.9-opcache 7.3/alpine3.9/opcache
	docker build -t my/php:7.3-alpine3.9-pdo_mysql 7.3/alpine3.9/pdo_mysql
	docker build -t my/php:7.3-alpine3.9-pdo_pgsql 7.3/alpine3.9/pdo_pgsql
	docker build -t my/php:7.3-alpine3.9-pecl_apcu 7.3/alpine3.9/pecl_apcu
	docker build -t my/php:7.3-alpine3.9-pecl_mcrypt 7.3/alpine3.9/pecl_mcrypt
	docker build -t my/php:7.3-alpine3.9-pecl_mongodb 7.3/alpine3.9/pecl_mongodb
	docker build -t my/php:7.3-alpine3.9-pecl_redis 7.3/alpine3.9/pecl_redis
	docker build -t my/php:7.3-alpine3.9-snmp 7.3/alpine3.9/snmp
	docker build -t my/php:7.3-alpine3.9-soap 7.3/alpine3.9/soap
	docker build -t my/php:7.3-alpine3.9-sockets 7.3/alpine3.9/sockets

test-7.1-stretch:
	docker run -it --rm my/php:7.1-stretch-bcmath php --version && docker run -it --rm my/php:7.1-stretch-bcmath php -i | grep bcmath
	docker run -it --rm my/php:7.1-stretch-gd php --version && docker run -it --rm my/php:7.1-stretch-gd php -i | grep gd
	docker run -it --rm my/php:7.1-stretch-intl php --version && docker run -it --rm my/php:7.1-stretch-intl php -i | grep intl
	docker run -it --rm my/php:7.1-stretch-mbstring php --version && docker run -it --rm my/php:7.1-stretch-mbstring php -i | grep mbstring
	docker run -it --rm my/php:7.1-stretch-mcrypt php --version && docker run -it --rm my/php:7.1-stretch-mcrypt php -i | grep mcrypt
	docker run -it --rm my/php:7.1-stretch-mysqli php --version && docker run -it --rm my/php:7.1-stretch-mysqli php -i | grep mysqli
	docker run -it --rm my/php:7.1-stretch-opcache php --version && docker run -it --rm my/php:7.1-stretch-opcache php -i | grep opcache
	docker run -it --rm my/php:7.1-stretch-pdo_mysql php --version && docker run -it --rm my/php:7.1-stretch-pdo_mysql php -i | grep pdo_mysql
	docker run -it --rm my/php:7.1-stretch-pdo_pgsql php --version && docker run -it --rm my/php:7.1-stretch-pdo_pgsql php -i | grep pdo_pgsql
	docker run -it --rm my/php:7.1-stretch-pecl_apcu php --version && docker run -it --rm my/php:7.1-stretch-pecl_apcu php -i | grep pecl_apcu
	docker run -it --rm my/php:7.1-stretch-pecl_mongodb php --version && docker run -it --rm my/php:7.1-stretch-pecl_mongodb php -i | grep pecl_mongodb
	docker run -it --rm my/php:7.1-stretch-pecl_redis php --version && docker run -it --rm my/php:7.1-stretch-pecl_redis php -i | grep pecl_redis
	docker run -it --rm my/php:7.1-stretch-pecl_xdebug php --version && docker run -it --rm my/php:7.1-stretch-pecl_xdebug php -i | grep pecl_xdebug
	docker run -it --rm my/php:7.1-stretch-snmp php --version && docker run -it --rm my/php:7.1-stretch-snmp php -i | grep snmp
	docker run -it --rm my/php:7.1-stretch-soap php --version && docker run -it --rm my/php:7.1-stretch-soap php -i | grep soap
	docker run -it --rm my/php:7.1-stretch-sockets php --version && docker run -it --rm my/php:7.1-stretch-sockets php -i | grep sockets

test-7.2-stretch:
	docker run -it --rm my/php:7.2-stretch-bcmath php --version && docker run -it --rm my/php:7.2-stretch-bcmath php -i | grep bcmath
	docker run -it --rm my/php:7.2-stretch-gd php --version && docker run -it --rm my/php:7.2-stretch-gd php -i | grep gd
	docker run -it --rm my/php:7.2-stretch-intl php --version && docker run -it --rm my/php:7.2-stretch-intl php -i | grep intl
	docker run -it --rm my/php:7.2-stretch-mbstring php --version && docker run -it --rm my/php:7.2-stretch-mbstring php -i | grep mbstring
	docker run -it --rm my/php:7.2-stretch-mysqli php --version && docker run -it --rm my/php:7.2-stretch-mysqli php -i | grep mysqli
	docker run -it --rm my/php:7.2-stretch-opcache php --version && docker run -it --rm my/php:7.2-stretch-opcache php -i | grep opcache
	docker run -it --rm my/php:7.2-stretch-pdo_mysql php --version && docker run -it --rm my/php:7.2-stretch-pdo_mysql php -i | grep pdo_mysql
	docker run -it --rm my/php:7.2-stretch-pdo_pgsql php --version && docker run -it --rm my/php:7.2-stretch-pdo_pgsql php -i | grep pdo_pgsql
	docker run -it --rm my/php:7.2-stretch-pecl_apcu php --version && docker run -it --rm my/php:7.2-stretch-pecl_apcu php -i | grep pecl_apcu
	docker run -it --rm my/php:7.2-stretch-pecl_mcrypt php --version && docker run -it --rm my/php:7.2-stretch-pecl_mcrypt php -i | grep pecl_mcrypt
	docker run -it --rm my/php:7.2-stretch-pecl_mongodb php --version && docker run -it --rm my/php:7.2-stretch-pecl_mongodb php -i | grep pecl_mongodb
	docker run -it --rm my/php:7.2-stretch-pecl_redis php --version && docker run -it --rm my/php:7.2-stretch-pecl_redis php -i | grep pecl_redis
	docker run -it --rm my/php:7.2-stretch-pecl_xdebug php --version && docker run -it --rm my/php:7.2-stretch-pecl_xdebug php -i | grep pecl_xdebug
	docker run -it --rm my/php:7.2-stretch-snmp php --version && docker run -it --rm my/php:7.2-stretch-snmp php -i | grep snmp
	docker run -it --rm my/php:7.2-stretch-soap php --version && docker run -it --rm my/php:7.2-stretch-soap php -i | grep soap
	docker run -it --rm my/php:7.2-stretch-sockets php --version && docker run -it --rm my/php:7.2-stretch-sockets php -i | grep sockets

test-7.2-alpine3.9:
	docker run -it --rm my/php:7.2-alpine3.9-bcmath php --version && docker run -it --rm my/php:7.2-alpine3.9-bcmath php -i | grep bcmath
	docker run -it --rm my/php:7.2-alpine3.9-gd php --version && docker run -it --rm my/php:7.2-alpine3.9-gd php -i | grep gd
	docker run -it --rm my/php:7.2-alpine3.9-intl php --version && docker run -it --rm my/php:7.2-alpine3.9-intl php -i | grep intl
	docker run -it --rm my/php:7.2-alpine3.9-mbstring php --version && docker run -it --rm my/php:7.2-alpine3.9-mbstring php -i | grep mbstring
	docker run -it --rm my/php:7.2-alpine3.9-mysqli php --version && docker run -it --rm my/php:7.2-alpine3.9-mysqli php -i | grep mysqli
	docker run -it --rm my/php:7.2-alpine3.9-opcache php --version && docker run -it --rm my/php:7.2-alpine3.9-opcache php -i | grep opcache
	docker run -it --rm my/php:7.2-alpine3.9-pdo_mysql php --version && docker run -it --rm my/php:7.2-alpine3.9-pdo_mysql php -i | grep pdo_mysql
	docker run -it --rm my/php:7.2-alpine3.9-pdo_pgsql php --version && docker run -it --rm my/php:7.2-alpine3.9-pdo_pgsql php -i | grep pdo_pgsql
	docker run -it --rm my/php:7.2-alpine3.9-pecl_apcu php --version && docker run -it --rm my/php:7.2-alpine3.9-pecl_apcu php -i | grep pecl_apcu
	docker run -it --rm my/php:7.2-alpine3.9-pecl_mcrypt php --version && docker run -it --rm my/php:7.2-alpine3.9-pecl_mcrypt php -i | grep pecl_mcrypt
	docker run -it --rm my/php:7.2-alpine3.9-pecl_mongodb php --version && docker run -it --rm my/php:7.2-alpine3.9-pecl_mongodb php -i | grep pecl_mongodb
	docker run -it --rm my/php:7.2-alpine3.9-pecl_redis php --version && docker run -it --rm my/php:7.2-alpine3.9-pecl_redis php -i | grep pecl_redis
	docker run -it --rm my/php:7.2-alpine3.9-pecl_xdebug php --version && docker run -it --rm my/php:7.2-alpine3.9-pecl_xdebug php -i | grep pecl_xdebug
	docker run -it --rm my/php:7.2-alpine3.9-snmp php --version && docker run -it --rm my/php:7.2-alpine3.9-snmp php -i | grep snmp
	docker run -it --rm my/php:7.2-alpine3.9-soap php --version && docker run -it --rm my/php:7.2-alpine3.9-soap php -i | grep soap
	docker run -it --rm my/php:7.2-alpine3.9-sockets php --version && docker run -it --rm my/php:7.2-alpine3.9-sockets php -i | grep sockets

test-7.3-stretch:
	docker run -it --rm my/php:7.3-stretch-bcmath php --version && docker run -it --rm my/php:7.3-stretch-bcmath php -i | grep bcmath
	docker run -it --rm my/php:7.3-stretch-gd php --version && docker run -it --rm my/php:7.3-stretch-gd php -i | grep gd
	docker run -it --rm my/php:7.3-stretch-intl php --version && docker run -it --rm my/php:7.3-stretch-intl php -i | grep intl
	docker run -it --rm my/php:7.3-stretch-mbstring php --version && docker run -it --rm my/php:7.3-stretch-mbstring php -i | grep mbstring
	docker run -it --rm my/php:7.3-stretch-mysqli php --version && docker run -it --rm my/php:7.3-stretch-mysqli php -i | grep mysqli
	docker run -it --rm my/php:7.3-stretch-opcache php --version && docker run -it --rm my/php:7.3-stretch-opcache php -i | grep opcache
	docker run -it --rm my/php:7.3-stretch-pdo_mysql php --version && docker run -it --rm my/php:7.3-stretch-pdo_mysql php -i | grep pdo_mysql
	docker run -it --rm my/php:7.3-stretch-pdo_pgsql php --version && docker run -it --rm my/php:7.3-stretch-pdo_pgsql php -i | grep pdo_pgsql
	docker run -it --rm my/php:7.3-stretch-pecl_apcu php --version && docker run -it --rm my/php:7.3-stretch-pecl_apcu php -i | grep apcu
	docker run -it --rm my/php:7.3-stretch-pecl_mcrypt php --version && docker run -it --rm my/php:7.3-stretch-pecl_mcrypt php -i | grep mcrypt
	docker run -it --rm my/php:7.3-stretch-pecl_mongodb php --version && docker run -it --rm my/php:7.3-stretch-pecl_mongodb php -i | grep mongodb
	docker run -it --rm my/php:7.3-stretch-pecl_redis php --version && docker run -it --rm my/php:7.3-stretch-pecl_redis php -i | grep redis
	docker run -it --rm my/php:7.3-stretch-snmp php --version && docker run -it --rm my/php:7.3-stretch-snmp php -i | grep snmp
	docker run -it --rm my/php:7.3-stretch-soap php --version && docker run -it --rm my/php:7.3-stretch-soap php -i | grep soap
	docker run -it --rm my/php:7.3-stretch-sockets php --version && docker run -it --rm my/php:7.3-stretch-sockets php -i | grep sockets

test-7.3-alpine3.9:
	docker run -it --rm my/php:7.3-alpine3.9-bcmath php --version && docker run -it --rm my/php:7.3-alpine3.9-bcmath php -i | grep bcmath
	docker run -it --rm my/php:7.3-alpine3.9-gd php --version && docker run -it --rm my/php:7.3-alpine3.9-gd php -i | grep gd
	docker run -it --rm my/php:7.3-alpine3.9-intl php --version && docker run -it --rm my/php:7.3-alpine3.9-intl php -i | grep intl
	docker run -it --rm my/php:7.3-alpine3.9-mbstring php --version && docker run -it --rm my/php:7.3-alpine3.9-mbstring php -i | grep mbstring
	docker run -it --rm my/php:7.3-alpine3.9-mysqli php --version && docker run -it --rm my/php:7.3-alpine3.9-mysqli php -i | grep mysqli
	docker run -it --rm my/php:7.3-alpine3.9-opcache php --version && docker run -it --rm my/php:7.3-alpine3.9-opcache php -i | grep opcache
	docker run -it --rm my/php:7.3-alpine3.9-pdo_mysql php --version && docker run -it --rm my/php:7.3-alpine3.9-pdo_mysql php -i | grep pdo_mysql
	docker run -it --rm my/php:7.3-alpine3.9-pdo_pgsql php --version && docker run -it --rm my/php:7.3-alpine3.9-pdo_pgsql php -i | grep pdo_pgsql
	docker run -it --rm my/php:7.3-alpine3.9-pecl_apcu php --version && docker run -it --rm my/php:7.3-alpine3.9-pecl_apcu php -i | grep apcu
	docker run -it --rm my/php:7.3-alpine3.9-pecl_mcrypt php --version && docker run -it --rm my/php:7.3-alpine3.9-pecl_mcrypt php -i | grep mcrypt
	docker run -it --rm my/php:7.3-alpine3.9-pecl_mongodb php --version && docker run -it --rm my/php:7.3-alpine3.9-pecl_mongodb php -i | grep mongodb
	docker run -it --rm my/php:7.3-alpine3.9-pecl_redis php --version && docker run -it --rm my/php:7.3-alpine3.9-pecl_redis php -i | grep redis
	docker run -it --rm my/php:7.3-alpine3.9-snmp php --version && docker run -it --rm my/php:7.3-alpine3.9-snmp php -i | grep snmp
	docker run -it --rm my/php:7.3-alpine3.9-soap php --version && docker run -it --rm my/php:7.3-alpine3.9-soap php -i | grep soap
	docker run -it --rm my/php:7.3-alpine3.9-sockets php --version && docker run -it --rm my/php:7.3-alpine3.9-sockets php -i | grep sockets
