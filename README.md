# fox91/php-extensions

[![Build Status](https://github.com/fox91/docker-php-extensions/actions/workflows/ci.yaml/badge.svg)](https://github.com/fox91/docker-php-extensions/actions/workflows/ci.yaml)

## [Supported PHP versions](https://www.php.net/supported-versions.php)

- `7.3`: until 06 Dec 2021
- `7.4`: until 28 Nov 2022
- `8.0`: until 26 Nov 2023

## Supported PHP extensions

Extension | PHP `7.3` `bullseye` | PHP `7.3` `alpine3.14` | PHP `7.4` `bullseye` | PHP `7.4` `alpine3.14` | PHP `8.0` `bullseye` | PHP `8.0` `alpine3.14`
----------|--------------------|------------------------|--------------------|------------------------|--------------------|-----------------------
[`apcu`](https://pecl.php.net/package/apcu) _PECL_ | `(5.1.21)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/bullseye/pecl_apcu/Dockerfile) | `(5.1.21)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.14/pecl_apcu/Dockerfile) | `(5.1.21)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/bullseye/pecl_apcu/Dockerfile) | `(5.1.21)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.14/pecl_apcu/Dockerfile) | `(5.1.21)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/bullseye/pecl_apcu/Dockerfile) | `(5.1.21)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.14/pecl_apcu/Dockerfile)
[`ast`](https://pecl.php.net/package/ast) _PECL_ | `(1.0.14)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/bullseye/pecl_ast/Dockerfile) | `(1.0.14)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.14/pecl_ast/Dockerfile) | `(1.0.14)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/bullseye/pecl_ast/Dockerfile) | `(1.0.14)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.14/pecl_ast/Dockerfile) | `(1.0.14)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/bullseye/pecl_ast/Dockerfile) | `(1.0.14)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.14/pecl_ast/Dockerfile)
[`bcmath`](https://php.net/bcmath) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/bullseye/bcmath/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.14/bcmath/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/bullseye/bcmath/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.14/bcmath/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/bullseye/bcmath/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.14/bcmath/Dockerfile)
[`bz2`](https://php.net/bz2) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/bullseye/bz2/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.14/bz2/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/bullseye/bz2/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.14/bz2/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/bullseye/bz2/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.14/bz2/Dockerfile)
[`gd`](https://php.net/gd) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/bullseye/gd/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.14/gd/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/bullseye/gd/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.14/gd/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/bullseye/gd/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.14/gd/Dockerfile)
[`gmp`](https://php.net/gmp) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/bullseye/gmp/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.14/gmp/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/bullseye/gmp/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.14/gmp/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/bullseye/gmp/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.14/gmp/Dockerfile)
[`grpc`](https://pecl.php.net/package/grpc) _PECL_ | `(1.41.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/bullseye/pecl_grpc/Dockerfile) | ✗ | `(1.41.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/bullseye/pecl_grpc/Dockerfile) | ✗ | `(1.41.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/bullseye/pecl_grpc/Dockerfile) | ✗
[`hrtime`](https://pecl.php.net/package/hrtime) _PECL_ | `(0.6.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/bullseye/pecl_hrtime/Dockerfile) | `(0.6.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.14/pecl_hrtime/Dockerfile) | `(0.6.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/bullseye/pecl_hrtime/Dockerfile) | `(0.6.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.14/pecl_hrtime/Dockerfile) | ✗ | ✗
[`igbinary`](https://pecl.php.net/package/igbinary) _PECL_ | `(3.2.6)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/bullseye/pecl_igbinary/Dockerfile) | `(3.2.6)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.14/pecl_igbinary/Dockerfile) | `(3.2.6)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/bullseye/pecl_igbinary/Dockerfile) | `(3.2.6)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.14/pecl_igbinary/Dockerfile) | `(3.2.6)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/bullseye/pecl_igbinary/Dockerfile) | `(3.2.6)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.14/pecl_igbinary/Dockerfile)
[`imagick`](https://pecl.php.net/package/imagick) _PECL_ | `(3.5.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/bullseye/pecl_imagick/Dockerfile) | `(3.5.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.14/pecl_imagick/Dockerfile) | `(3.5.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/bullseye/pecl_imagick/Dockerfile) | `(3.5.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.14/pecl_imagick/Dockerfile) | `(3.5.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/bullseye/pecl_imagick/Dockerfile) | `(3.5.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.14/pecl_imagick/Dockerfile)
[`intl`](https://php.net/intl) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/bullseye/intl/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.14/intl/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/bullseye/intl/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.14/intl/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/bullseye/intl/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.14/intl/Dockerfile)
[`ldap`](https://php.net/ldap) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/bullseye/ldap/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.14/ldap/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/bullseye/ldap/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.14/ldap/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/bullseye/ldap/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.14/ldap/Dockerfile)
[`mcrypt`](https://pecl.php.net/package/mcrypt) _PECL_ | `(1.0.4)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/bullseye/pecl_mcrypt/Dockerfile) | `(1.0.4)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.14/pecl_mcrypt/Dockerfile) | `(1.0.4)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/bullseye/pecl_mcrypt/Dockerfile) | `(1.0.4)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.14/pecl_mcrypt/Dockerfile) | `(1.0.4)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/bullseye/pecl_mcrypt/Dockerfile) | `(1.0.4)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.14/pecl_mcrypt/Dockerfile)
[`memcache`](https://pecl.php.net/package/memcache) _PECL_ | `(4.0.5.2)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/bullseye/pecl_memcache/Dockerfile) | `(4.0.5.2)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.14/pecl_memcache/Dockerfile) | `(4.0.5.2)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/bullseye/pecl_memcache/Dockerfile) | `(4.0.5.2)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.14/pecl_memcache/Dockerfile) | `(8.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/bullseye/pecl_memcache/Dockerfile) | `(8.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.14/pecl_memcache/Dockerfile)
[`memcached`](https://pecl.php.net/package/memcached) _PECL_ | `(3.1.5)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/bullseye/pecl_memcached/Dockerfile) | `(3.1.5)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.14/pecl_memcached/Dockerfile) | `(3.1.5)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/bullseye/pecl_memcached/Dockerfile) | `(3.1.5)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.14/pecl_memcached/Dockerfile) | `(3.1.5)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/bullseye/pecl_memcached/Dockerfile) | `(3.1.5)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.14/pecl_memcached/Dockerfile)
[`mongodb`](https://pecl.php.net/package/mongodb) _PECL_ | `(1.10.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/bullseye/pecl_mongodb/Dockerfile) | `(1.10.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.14/pecl_mongodb/Dockerfile) | `(1.10.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/bullseye/pecl_mongodb/Dockerfile) | `(1.10.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.14/pecl_mongodb/Dockerfile) | `(1.10.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/bullseye/pecl_mongodb/Dockerfile) | `(1.10.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.14/pecl_mongodb/Dockerfile)
[`mysqli`](https://php.net/mysqli) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/bullseye/mysqli/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.14/mysqli/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/bullseye/mysqli/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.14/mysqli/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/bullseye/mysqli/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.14/mysqli/Dockerfile)
[`opcache`](https://php.net/opcache) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/bullseye/opcache/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.14/opcache/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/bullseye/opcache/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.14/opcache/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/bullseye/opcache/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.14/opcache/Dockerfile)
[`pcntl`](https://php.net/pcntl) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/bullseye/pcntl/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.14/pcntl/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/bullseye/pcntl/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.14/pcntl/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/bullseye/pcntl/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.14/pcntl/Dockerfile)
[`pdo_mysql`](https://php.net/pdo_mysql) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/bullseye/pdo_mysql/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.14/pdo_mysql/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/bullseye/pdo_mysql/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.14/pdo_mysql/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/bullseye/pdo_mysql/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.14/pdo_mysql/Dockerfile)
[`pdo_pgsql`](https://php.net/pdo_pgsql) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/bullseye/pdo_pgsql/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.14/pdo_pgsql/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/bullseye/pdo_pgsql/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.14/pdo_pgsql/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/bullseye/pdo_pgsql/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.14/pdo_pgsql/Dockerfile)
[`phpiredis`](https://github.com/nrk/phpiredis) | `(1.0.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/bullseye/phpiredis/Dockerfile) | ✗ | `(1.0.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/bullseye/phpiredis/Dockerfile) | ✗ | `(1.0.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/bullseye/phpiredis/Dockerfile) | ✗
[`protobuf`](https://pecl.php.net/package/protobuf) _PECL_ | `(3.19.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/bullseye/pecl_protobuf/Dockerfile) | `(3.19.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.14/pecl_protobuf/Dockerfile) | `(3.19.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/bullseye/pecl_protobuf/Dockerfile) | `(3.19.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.14/pecl_protobuf/Dockerfile) | `(3.19.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/bullseye/pecl_protobuf/Dockerfile) | `(3.19.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.14/pecl_protobuf/Dockerfile)
[`redis`](https://pecl.php.net/package/redis) _PECL_ | `(5.3.4)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/bullseye/pecl_redis/Dockerfile) | `(5.3.4)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.14/pecl_redis/Dockerfile) | `(5.3.4)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/bullseye/pecl_redis/Dockerfile) | `(5.3.4)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.14/pecl_redis/Dockerfile) | `(5.3.4)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/bullseye/pecl_redis/Dockerfile) | `(5.3.4)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.14/pecl_redis/Dockerfile)
[`snmp`](https://php.net/snmp) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/bullseye/snmp/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.14/snmp/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/bullseye/snmp/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.14/snmp/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/bullseye/snmp/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.14/snmp/Dockerfile)
[`soap`](https://php.net/soap) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/bullseye/soap/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.14/soap/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/bullseye/soap/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.14/soap/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/bullseye/soap/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.14/soap/Dockerfile)
[`sockets`](https://php.net/sockets) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/bullseye/sockets/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.14/sockets/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/bullseye/sockets/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.14/sockets/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/bullseye/sockets/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.14/sockets/Dockerfile)
[`timezonedb`](https://pecl.php.net/package/timezonedb) _PECL_ | `(2021.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/bullseye/pecl_timezonedb/Dockerfile) | `(2021.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.14/pecl_timezonedb/Dockerfile) | `(2021.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/bullseye/pecl_timezonedb/Dockerfile) | `(2021.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.14/pecl_timezonedb/Dockerfile) | `(2021.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/bullseye/pecl_timezonedb/Dockerfile) | `(2021.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.14/pecl_timezonedb/Dockerfile)
[`var_representation`](https://pecl.php.net/package/var_representation) _PECL_ | `(0.1.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/bullseye/pecl_var_representation/Dockerfile) | `(0.1.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.14/pecl_var_representation/Dockerfile) | `(0.1.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/bullseye/pecl_var_representation/Dockerfile) | `(0.1.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.14/pecl_var_representation/Dockerfile) | `(0.1.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/bullseye/pecl_var_representation/Dockerfile) | `(0.1.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.14/pecl_var_representation/Dockerfile)
[`xdebug`](https://pecl.php.net/package/xdebug) _PECL_ | `(3.1.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/bullseye/pecl_xdebug/Dockerfile) | `(3.1.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.14/pecl_xdebug/Dockerfile) | `(3.1.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/bullseye/pecl_xdebug/Dockerfile) | `(3.1.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.14/pecl_xdebug/Dockerfile) | `(3.1.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/bullseye/pecl_xdebug/Dockerfile) | `(3.1.1)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.14/pecl_xdebug/Dockerfile)
[`xhprof`](https://pecl.php.net/package/xhprof) _PECL_ | `(2.3.5)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/bullseye/pecl_xhprof/Dockerfile) | `(2.3.5)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.14/pecl_xhprof/Dockerfile) | `(2.3.5)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/bullseye/pecl_xhprof/Dockerfile) | `(2.3.5)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.14/pecl_xhprof/Dockerfile) | `(2.3.5)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/bullseye/pecl_xhprof/Dockerfile) | `(2.3.5)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.14/pecl_xhprof/Dockerfile)
[`yaml`](https://pecl.php.net/package/yaml) _PECL_ | `(2.2.2)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/bullseye/pecl_yaml/Dockerfile) | `(2.2.2)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.14/pecl_yaml/Dockerfile) | `(2.2.2)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/bullseye/pecl_yaml/Dockerfile) | `(2.2.2)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.14/pecl_yaml/Dockerfile) | `(2.2.2)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/bullseye/pecl_yaml/Dockerfile) | `(2.2.2)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.14/pecl_yaml/Dockerfile)
[`zip`](https://pecl.php.net/package/zip) _PECL_ | `(1.20.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/bullseye/pecl_zip/Dockerfile) | `(1.20.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.14/pecl_zip/Dockerfile) | `(1.20.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/bullseye/pecl_zip/Dockerfile) | `(1.20.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.14/pecl_zip/Dockerfile) | `(1.20.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/bullseye/pecl_zip/Dockerfile) | `(1.20.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.14/pecl_zip/Dockerfile)
[`zip`](https://php.net/zip) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/bullseye/zip/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.14/zip/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/bullseye/zip/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.14/zip/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/bullseye/zip/Dockerfile) | [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.14/zip/Dockerfile)

### Limited by dependencies to older OS

Extension | PHP `7.3` `buster` | PHP `7.3` `alpine3.14` | PHP `7.4` `buster` | PHP `7.4` `alpine3.14` | PHP `8.0` `buster` | PHP `8.0` `alpine3.14`
----------|--------------------|------------------------|--------------------|------------------------|--------------------|-----------------------
[`pdo_sqlsrv`](https://pecl.php.net/package/pdo_sqlsrv) _PECL_ | `(5.9.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/buster/pecl_pdo_sqlsrv/Dockerfile) | `(5.9.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.14/pecl_pdo_sqlsrv/Dockerfile) | `(5.9.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/buster/pecl_pdo_sqlsrv/Dockerfile) | `(5.9.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.14/pecl_pdo_sqlsrv/Dockerfile) | `(5.9.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/buster/pecl_pdo_sqlsrv/Dockerfile) | `(5.9.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.14/pecl_pdo_sqlsrv/Dockerfile)
[`sqlsrv`](https://pecl.php.net/package/sqlsrv) _PECL_ | `(5.9.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/buster/pecl_sqlsrv/Dockerfile) | `(5.9.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.3/alpine3.14/pecl_sqlsrv/Dockerfile) | `(5.9.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/buster/pecl_sqlsrv/Dockerfile) | `(5.9.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/7.4/alpine3.14/pecl_sqlsrv/Dockerfile) | `(5.9.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/buster/pecl_sqlsrv/Dockerfile) | `(5.9.0)` [:whale:](https://github.com/fox91/docker-php-extensions/blob/master/8.0/alpine3.14/pecl_sqlsrv/Dockerfile)
