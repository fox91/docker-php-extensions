# fox91/php-extensions

[![Build Status](https://travis-ci.org/fox91/docker-php-extensions.svg?branch=master)](https://travis-ci.org/fox91/docker-php-extensions)

## Supported PHP extensions

Extension | PHP `7.3` `buster` | PHP `7.3` `alpine3.13` | PHP `7.4` `buster` | PHP `7.4` `alpine3.13` | PHP `8.0` `buster` | PHP `8.0` `alpine3.13`
----------|--------------------|------------------------|--------------------|------------------------|--------------------|-----------------------
[`apcu`](https://pecl.php.net/package/apcu) _PECL_ | ✓ `(5.1.19)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/buster/pecl_apcu/Dockerfile) | ✓ `(5.1.19)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.13/pecl_apcu/Dockerfile) | ✓ `(5.1.19)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/buster/pecl_apcu/Dockerfile) | ✓ `(5.1.19)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.13/pecl_apcu/Dockerfile) | ✓ `(5.1.19)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/buster/pecl_apcu/Dockerfile) | ✓ `(5.1.19)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.13/pecl_apcu/Dockerfile)
[`bcmath`](https://php.net/bcmath) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/buster/bcmath/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.13/bcmath/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/buster/bcmath/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.13/bcmath/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/buster/bcmath/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.13/bcmath/Dockerfile)
[`bz2`](https://php.net/bz2) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/buster/bz2/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.13/bz2/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/buster/bz2/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.13/bz2/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/buster/bz2/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.13/bz2/Dockerfile)
[`gd`](https://php.net/gd) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/buster/gd/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.13/gd/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/buster/gd/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.13/gd/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/buster/gd/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.13/gd/Dockerfile)
[`gmp`](https://php.net/gmp) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/buster/gmp/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.13/gmp/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/buster/gmp/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.13/gmp/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/buster/gmp/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.13/gmp/Dockerfile)
[`hrtime`](https://pecl.php.net/package/hrtime) _PECL_ | ✓ `(0.6.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/buster/pecl_hrtime/Dockerfile) | ✓ `(0.6.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.13/pecl_hrtime/Dockerfile) | ✓ `(0.6.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/buster/pecl_hrtime/Dockerfile) | ✓ `(0.6.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.13/pecl_hrtime/Dockerfile) | ✗ | ✗
[`imagick`](https://pecl.php.net/package/imagick) _PECL_ | ✓ `(3.4.4)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/buster/pecl_imagick/Dockerfile) | ✓ `(3.4.4)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.13/pecl_imagick/Dockerfile) | ✓ `(3.4.4)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/buster/pecl_imagick/Dockerfile) | ✓ `(3.4.4)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.13/pecl_imagick/Dockerfile) | ✗ | ✗
[`intl`](https://php.net/intl) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/buster/intl/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.13/intl/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/buster/intl/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.13/intl/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/buster/intl/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.13/intl/Dockerfile)
[`ldap`](https://php.net/ldap) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/buster/ldap/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.13/ldap/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/buster/ldap/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.13/ldap/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/buster/ldap/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.13/ldap/Dockerfile)
[`mcrypt`](https://pecl.php.net/package/mcrypt) _PECL_ | ✓ `(1.0.4)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/buster/pecl_mcrypt/Dockerfile) | ✓ `(1.0.4)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.13/pecl_mcrypt/Dockerfile) | ✓ `(1.0.4)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/buster/pecl_mcrypt/Dockerfile) | ✓ `(1.0.4)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.13/pecl_mcrypt/Dockerfile) | ✓ `(1.0.4)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/buster/pecl_mcrypt/Dockerfile) | ✓ `(1.0.4)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.13/pecl_mcrypt/Dockerfile)
[`memcache`](https://pecl.php.net/package/memcache) _PECL_ | ✓ `(4.0.5.2)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/buster/pecl_memcache/Dockerfile) | ✓ `(4.0.5.2)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.13/pecl_memcache/Dockerfile) | ✓ `(4.0.5.2)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/buster/pecl_memcache/Dockerfile) | ✓ `(4.0.5.2)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.13/pecl_memcache/Dockerfile) | ✓ `(8.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/buster/pecl_memcache/Dockerfile) | ✓ `(8.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.13/pecl_memcache/Dockerfile)
[`memcached`](https://pecl.php.net/package/memcached) _PECL_ | ✓ `(3.1.5)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/buster/pecl_memcached/Dockerfile) | ✓ `(3.1.5)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.13/pecl_memcached/Dockerfile) | ✓ `(3.1.5)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/buster/pecl_memcached/Dockerfile) | ✓ `(3.1.5)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.13/pecl_memcached/Dockerfile) | ✓ `(3.1.5)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/buster/pecl_memcached/Dockerfile) | ✓ `(3.1.5)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.13/pecl_memcached/Dockerfile)
[`mongodb`](https://pecl.php.net/package/mongodb) _PECL_ | ✓ `(1.9.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/buster/pecl_mongodb/Dockerfile) | ✓ `(1.9.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.13/pecl_mongodb/Dockerfile) | ✓ `(1.9.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/buster/pecl_mongodb/Dockerfile) | ✓ `(1.9.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.13/pecl_mongodb/Dockerfile) | ✓ `(1.9.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/buster/pecl_mongodb/Dockerfile) | ✓ `(1.9.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.13/pecl_mongodb/Dockerfile)
[`mysqli`](https://php.net/mysqli) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/buster/mysqli/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.13/mysqli/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/buster/mysqli/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.13/mysqli/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/buster/mysqli/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.13/mysqli/Dockerfile)
[`opcache`](https://php.net/opcache) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/buster/opcache/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.13/opcache/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/buster/opcache/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.13/opcache/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/buster/opcache/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.13/opcache/Dockerfile)
[`pcntl`](https://php.net/pcntl) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/buster/pcntl/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.13/pcntl/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/buster/pcntl/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.13/pcntl/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/buster/pcntl/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.13/pcntl/Dockerfile)
[`pdo_mysql`](https://php.net/pdo_mysql) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/buster/pdo_mysql/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.13/pdo_mysql/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/buster/pdo_mysql/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.13/pdo_mysql/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/buster/pdo_mysql/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.13/pdo_mysql/Dockerfile)
[`pdo_pgsql`](https://php.net/pdo_pgsql) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/buster/pdo_pgsql/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.13/pdo_pgsql/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/buster/pdo_pgsql/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.13/pdo_pgsql/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/buster/pdo_pgsql/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.13/pdo_pgsql/Dockerfile)
[`redis`](https://pecl.php.net/package/redis) _PECL_ | ✓ `(5.3.2)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/buster/pecl_redis/Dockerfile) | ✓ `(5.3.2)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.13/pecl_redis/Dockerfile) | ✓ `(5.3.2)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/buster/pecl_redis/Dockerfile) | ✓ `(5.3.2)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.13/pecl_redis/Dockerfile) | ✓ `(5.3.2)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/buster/pecl_redis/Dockerfile) | ✓ `(5.3.2)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.13/pecl_redis/Dockerfile)
[`snmp`](https://php.net/snmp) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/buster/snmp/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.13/snmp/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/buster/snmp/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.13/snmp/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/buster/snmp/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.13/snmp/Dockerfile)
[`soap`](https://php.net/soap) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/buster/soap/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.13/soap/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/buster/soap/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.13/soap/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/buster/soap/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.13/soap/Dockerfile)
[`sockets`](https://php.net/sockets) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/buster/sockets/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.13/sockets/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/buster/sockets/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.13/sockets/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/buster/sockets/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.13/sockets/Dockerfile)
[`timezonedb`](https://pecl.php.net/package/timezonedb) _PECL_ | ✓ `(2021.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/buster/pecl_timezonedb/Dockerfile) | ✓ `(2021.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.13/pecl_timezonedb/Dockerfile) | ✓ `(2021.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/buster/pecl_timezonedb/Dockerfile) | ✓ `(2021.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.13/pecl_timezonedb/Dockerfile) | ✓ `(2021.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/buster/pecl_timezonedb/Dockerfile) | ✓ `(2021.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.13/pecl_timezonedb/Dockerfile)
[`xdebug`](https://pecl.php.net/package/xdebug) _PECL_ | ✓ `(3.0.2)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/buster/pecl_xdebug/Dockerfile) | ✓ `(3.0.2)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.13/pecl_xdebug/Dockerfile) | ✓ `(3.0.2)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/buster/pecl_xdebug/Dockerfile) | ✓ `(3.0.2)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.13/pecl_xdebug/Dockerfile) | ✓ `(3.0.2)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/buster/pecl_xdebug/Dockerfile) | ✓ `(3.0.2)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.13/pecl_xdebug/Dockerfile)
[`yaml`](https://pecl.php.net/package/yaml) _PECL_ | ✓ `(2.2.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/buster/pecl_yaml/Dockerfile) | ✓ `(2.2.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.13/pecl_yaml/Dockerfile) | ✓ `(2.2.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/buster/pecl_yaml/Dockerfile) | ✓ `(2.2.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.13/pecl_yaml/Dockerfile) | ✓ `(2.2.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/buster/pecl_yaml/Dockerfile) | ✓ `(2.2.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.13/pecl_yaml/Dockerfile)
[`zip`](https://pecl.php.net/package/zip) _PECL_ | ✓ `(1.19.2)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/buster/pecl_zip/Dockerfile) | ✓ `(1.19.2)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.13/pecl_zip/Dockerfile) | ✓ `(1.19.2)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/buster/pecl_zip/Dockerfile) | ✓ `(1.19.2)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.13/pecl_zip/Dockerfile) | ✓ `(1.19.2)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/buster/pecl_zip/Dockerfile) | ✓ `(1.19.2)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.13/pecl_zip/Dockerfile)
[`zip`](https://php.net/zip) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/buster/zip/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.13/zip/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/buster/zip/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.13/zip/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/buster/zip/Dockerfile) | ✓ [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.13/zip/Dockerfile)
