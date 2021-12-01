# fox91/php-extensions

[![Build Status](https://github.com/fox91/docker-php-extensions/actions/workflows/ci.yaml/badge.svg)](https://github.com/fox91/docker-php-extensions/actions/workflows/ci.yaml)

## [Supported PHP versions](https://www.php.net/supported-versions.php)

Branch | Initial Release | Active Support Until | Security Support Until
-------|:---------------:|:--------------------:|:----------------------:
`7.3` | 06 Dec 2018 | 06 Dec 2020 | 06 Dec 2021
`7.4` | 28 Nov 2019 | 28 Nov 2021 | 28 Nov 2022
`8.0` | 26 Nov 2020 | 26 Nov 2022 | 26 Nov 2023
`8.1` | 25 Nov 2021 | 25 Nov 2023 | 25 Nov 2024

## Supported PHP extensions

Extension | PHP `7.3` `bullseye` | PHP `7.3` `alpine3.14` | PHP `7.4` `bullseye` | PHP `7.4` `alpine3.14` | PHP `8.0` `bullseye` | PHP `8.0` `alpine3.14` | PHP `8.1` `bullseye` | PHP `8.1` `alpine3.14`
----------|:--------------------:|:----------------------:|:--------------------:|:----------------------:|:--------------------:|:----------------------:|:--------------------:|-----------------------:
[`amqp`](https://pecl.php.net/package/amqp) _PECL_ | `(1.11.0)` [:whale:](7.3/bullseye/pecl_amqp/Dockerfile) | `(1.11.0)` [:whale:](7.3/alpine3.14/pecl_amqp/Dockerfile) | `(1.11.0)` [:whale:](7.4/bullseye/pecl_amqp/Dockerfile) | `(1.11.0)` [:whale:](7.4/alpine3.14/pecl_amqp/Dockerfile) | `(1.11.0)` [:whale:](8.0/bullseye/pecl_amqp/Dockerfile) | `(1.11.0)` [:whale:](8.0/alpine3.14/pecl_amqp/Dockerfile) | `(1.11.0)` [:whale:](8.1/bullseye/pecl_amqp/Dockerfile) | `(1.11.0)` [:whale:](8.1/alpine3.14/pecl_amqp/Dockerfile)
[`apcu`](https://pecl.php.net/package/apcu) _PECL_ | `(5.1.21)` [:whale:](7.3/bullseye/pecl_apcu/Dockerfile) | `(5.1.21)` [:whale:](7.3/alpine3.14/pecl_apcu/Dockerfile) | `(5.1.21)` [:whale:](7.4/bullseye/pecl_apcu/Dockerfile) | `(5.1.21)` [:whale:](7.4/alpine3.14/pecl_apcu/Dockerfile) | `(5.1.21)` [:whale:](8.0/bullseye/pecl_apcu/Dockerfile) | `(5.1.21)` [:whale:](8.0/alpine3.14/pecl_apcu/Dockerfile) | `(5.1.21)` [:whale:](8.1/bullseye/pecl_apcu/Dockerfile) | `(5.1.21)` [:whale:](8.1/alpine3.14/pecl_apcu/Dockerfile)
[`ast`](https://pecl.php.net/package/ast) _PECL_ | `(1.0.16)` [:whale:](7.3/bullseye/pecl_ast/Dockerfile) | `(1.0.16)` [:whale:](7.3/alpine3.14/pecl_ast/Dockerfile) | `(1.0.16)` [:whale:](7.4/bullseye/pecl_ast/Dockerfile) | `(1.0.16)` [:whale:](7.4/alpine3.14/pecl_ast/Dockerfile) | `(1.0.16)` [:whale:](8.0/bullseye/pecl_ast/Dockerfile) | `(1.0.16)` [:whale:](8.0/alpine3.14/pecl_ast/Dockerfile) | `(1.0.16)` [:whale:](8.1/bullseye/pecl_ast/Dockerfile) | `(1.0.16)` [:whale:](8.1/alpine3.14/pecl_ast/Dockerfile)
[`bcmath`](https://php.net/bcmath) | [:whale:](7.3/bullseye/bcmath/Dockerfile) | [:whale:](7.3/alpine3.14/bcmath/Dockerfile) | [:whale:](7.4/bullseye/bcmath/Dockerfile) | [:whale:](7.4/alpine3.14/bcmath/Dockerfile) | [:whale:](8.0/bullseye/bcmath/Dockerfile) | [:whale:](8.0/alpine3.14/bcmath/Dockerfile) | [:whale:](8.1/bullseye/bcmath/Dockerfile) | [:whale:](8.1/alpine3.14/bcmath/Dockerfile)
[`bz2`](https://php.net/bz2) | [:whale:](7.3/bullseye/bz2/Dockerfile) | [:whale:](7.3/alpine3.14/bz2/Dockerfile) | [:whale:](7.4/bullseye/bz2/Dockerfile) | [:whale:](7.4/alpine3.14/bz2/Dockerfile) | [:whale:](8.0/bullseye/bz2/Dockerfile) | [:whale:](8.0/alpine3.14/bz2/Dockerfile) | [:whale:](8.1/bullseye/bz2/Dockerfile) | [:whale:](8.1/alpine3.14/bz2/Dockerfile)
[`ds`](https://pecl.php.net/package/ds) _PECL_ | `(1.3.0)` [:whale:](7.3/bullseye/pecl_ds/Dockerfile) | `(1.3.0)` [:whale:](7.3/alpine3.14/pecl_ds/Dockerfile) | `(1.3.0)` [:whale:](7.4/bullseye/pecl_ds/Dockerfile) | `(1.3.0)` [:whale:](7.4/alpine3.14/pecl_ds/Dockerfile) | `(1.3.0)` [:whale:](8.0/bullseye/pecl_ds/Dockerfile) | `(1.3.0)` [:whale:](8.0/alpine3.14/pecl_ds/Dockerfile) | :x: | :x:
[`fann`](https://pecl.php.net/package/fann) _PECL_ | `(1.1.1)` [:whale:](7.3/bullseye/pecl_fann/Dockerfile) | `(1.1.1)` [:whale:](7.3/alpine3.14/pecl_fann/Dockerfile) | `(1.1.1)` [:whale:](7.4/bullseye/pecl_fann/Dockerfile) | `(1.1.1)` [:whale:](7.4/alpine3.14/pecl_fann/Dockerfile) | `(1.2.0RC1)` [:whale:](8.0/bullseye/pecl_fann/Dockerfile) | `(1.2.0RC1)` [:whale:](8.0/alpine3.14/pecl_fann/Dockerfile) | :x: | :x:
[`gd`](https://php.net/gd) | [:whale:](7.3/bullseye/gd/Dockerfile) | [:whale:](7.3/alpine3.14/gd/Dockerfile) | [:whale:](7.4/bullseye/gd/Dockerfile) | [:whale:](7.4/alpine3.14/gd/Dockerfile) | [:whale:](8.0/bullseye/gd/Dockerfile) | [:whale:](8.0/alpine3.14/gd/Dockerfile) | [:whale:](8.1/bullseye/gd/Dockerfile) | [:whale:](8.1/alpine3.14/gd/Dockerfile)
[`gearman`](https://pecl.php.net/package/gearman) _PECL_ | `(2.1.0)` [:whale:](7.3/bullseye/pecl_gearman/Dockerfile) | `(2.1.0)` [:whale:](7.3/alpine3.14/pecl_gearman/Dockerfile) | `(2.1.0)` [:whale:](7.4/bullseye/pecl_gearman/Dockerfile) | `(2.1.0)` [:whale:](7.4/alpine3.14/pecl_gearman/Dockerfile) | `(2.1.0)` [:whale:](8.0/bullseye/pecl_gearman/Dockerfile) | `(2.1.0)` [:whale:](8.0/alpine3.14/pecl_gearman/Dockerfile) | `(2.1.0)` [:whale:](8.1/bullseye/pecl_gearman/Dockerfile) | :x:
[`geospatial`](https://pecl.php.net/package/geospatial) _PECL_ | `(0.3.1)` [:whale:](7.3/bullseye/pecl_geospatial/Dockerfile) | `(0.3.1)` [:whale:](7.3/alpine3.14/pecl_geospatial/Dockerfile) | `(0.3.1)` [:whale:](7.4/bullseye/pecl_geospatial/Dockerfile) | `(0.3.1)` [:whale:](7.4/alpine3.14/pecl_geospatial/Dockerfile) | `(0.3.1)` [:whale:](8.0/bullseye/pecl_geospatial/Dockerfile) | `(0.3.1)` [:whale:](8.0/alpine3.14/pecl_geospatial/Dockerfile) | `(0.3.1)` [:whale:](8.1/bullseye/pecl_geospatial/Dockerfile) | `(0.3.1)` [:whale:](8.1/alpine3.14/pecl_geospatial/Dockerfile)
[`gmp`](https://php.net/gmp) | [:whale:](7.3/bullseye/gmp/Dockerfile) | [:whale:](7.3/alpine3.14/gmp/Dockerfile) | [:whale:](7.4/bullseye/gmp/Dockerfile) | [:whale:](7.4/alpine3.14/gmp/Dockerfile) | [:whale:](8.0/bullseye/gmp/Dockerfile) | [:whale:](8.0/alpine3.14/gmp/Dockerfile) | [:whale:](8.1/bullseye/gmp/Dockerfile) | [:whale:](8.1/alpine3.14/gmp/Dockerfile)
[`grpc`](https://pecl.php.net/package/grpc) _PECL_ | `(1.42.0)` [:whale:](7.3/bullseye/pecl_grpc/Dockerfile) | `(1.42.0)` [:whale:](7.3/alpine3.14/pecl_grpc/Dockerfile) | `(1.42.0)` [:whale:](7.4/bullseye/pecl_grpc/Dockerfile) | `(1.42.0)` [:whale:](7.4/alpine3.14/pecl_grpc/Dockerfile) | `(1.42.0)` [:whale:](8.0/bullseye/pecl_grpc/Dockerfile) | `(1.42.0)` [:whale:](8.0/alpine3.14/pecl_grpc/Dockerfile) | `(1.42.0)` [:whale:](8.1/bullseye/pecl_grpc/Dockerfile) | `(1.42.0)` [:whale:](8.1/alpine3.14/pecl_grpc/Dockerfile)
[`hrtime`](https://pecl.php.net/package/hrtime) _PECL_ | `(0.6.0)` [:whale:](7.3/bullseye/pecl_hrtime/Dockerfile) | `(0.6.0)` [:whale:](7.3/alpine3.14/pecl_hrtime/Dockerfile) | `(0.6.0)` [:whale:](7.4/bullseye/pecl_hrtime/Dockerfile) | `(0.6.0)` [:whale:](7.4/alpine3.14/pecl_hrtime/Dockerfile) | :x: | :x: | :x: | :x: | :x: | :x:
[`igbinary`](https://pecl.php.net/package/igbinary) _PECL_ | `(3.2.6)` [:whale:](7.3/bullseye/pecl_igbinary/Dockerfile) | `(3.2.6)` [:whale:](7.3/alpine3.14/pecl_igbinary/Dockerfile) | `(3.2.6)` [:whale:](7.4/bullseye/pecl_igbinary/Dockerfile) | `(3.2.6)` [:whale:](7.4/alpine3.14/pecl_igbinary/Dockerfile) | `(3.2.6)` [:whale:](8.0/bullseye/pecl_igbinary/Dockerfile) | `(3.2.6)` [:whale:](8.0/alpine3.14/pecl_igbinary/Dockerfile) | `(3.2.6)` [:whale:](8.1/bullseye/pecl_igbinary/Dockerfile) | `(3.2.6)` [:whale:](8.1/alpine3.14/pecl_igbinary/Dockerfile)
[`imagick`](https://pecl.php.net/package/imagick) _PECL_ | `(3.6.0)` [:whale:](7.3/bullseye/pecl_imagick/Dockerfile) | `(3.6.0)` [:whale:](7.3/alpine3.14/pecl_imagick/Dockerfile) | `(3.6.0)` [:whale:](7.4/bullseye/pecl_imagick/Dockerfile) | `(3.6.0)` [:whale:](7.4/alpine3.14/pecl_imagick/Dockerfile) | `(3.6.0)` [:whale:](8.0/bullseye/pecl_imagick/Dockerfile) | `(3.6.0)` [:whale:](8.0/alpine3.14/pecl_imagick/Dockerfile) | `(3.6.0)` [:whale:](8.1/bullseye/pecl_imagick/Dockerfile) | `(3.6.0)` [:whale:](8.1/alpine3.14/pecl_imagick/Dockerfile)
[`imap`](https://php.net/imap) | [:whale:](7.3/bullseye/imap/Dockerfile) | [:whale:](7.3/alpine3.14/imap/Dockerfile) | [:whale:](7.4/bullseye/imap/Dockerfile) | [:whale:](7.4/alpine3.14/imap/Dockerfile) | [:whale:](8.0/bullseye/imap/Dockerfile) | [:whale:](8.0/alpine3.14/imap/Dockerfile) | [:whale:](8.1/bullseye/imap/Dockerfile) | :x:
[`intl`](https://php.net/intl) | [:whale:](7.3/bullseye/intl/Dockerfile) | [:whale:](7.3/alpine3.14/intl/Dockerfile) | [:whale:](7.4/bullseye/intl/Dockerfile) | [:whale:](7.4/alpine3.14/intl/Dockerfile) | [:whale:](8.0/bullseye/intl/Dockerfile) | [:whale:](8.0/alpine3.14/intl/Dockerfile) | [:whale:](8.1/bullseye/intl/Dockerfile) | [:whale:](8.1/alpine3.14/intl/Dockerfile)
[`ldap`](https://php.net/ldap) | [:whale:](7.3/bullseye/ldap/Dockerfile) | [:whale:](7.3/alpine3.14/ldap/Dockerfile) | [:whale:](7.4/bullseye/ldap/Dockerfile) | [:whale:](7.4/alpine3.14/ldap/Dockerfile) | [:whale:](8.0/bullseye/ldap/Dockerfile) | [:whale:](8.0/alpine3.14/ldap/Dockerfile) | [:whale:](8.1/bullseye/ldap/Dockerfile) | [:whale:](8.1/alpine3.14/ldap/Dockerfile)
[`lua`](https://pecl.php.net/package/lua) _PECL_ | `(2.0.7)` [:whale:](7.3/bullseye/pecl_lua/Dockerfile) | :x: | `(2.0.7)` [:whale:](7.4/bullseye/pecl_lua/Dockerfile) | :x: | :x: | :x: | :x: | :x:
[`mailparse`](https://pecl.php.net/package/mailparse) _PECL_ | `(3.1.2)` [:whale:](7.3/bullseye/pecl_mailparse/Dockerfile) | `(3.1.2)` [:whale:](7.3/alpine3.14/pecl_mailparse/Dockerfile) | `(3.1.2)` [:whale:](7.4/bullseye/pecl_mailparse/Dockerfile) | `(3.1.2)` [:whale:](7.4/alpine3.14/pecl_mailparse/Dockerfile) | `(3.1.2)` [:whale:](8.0/bullseye/pecl_mailparse/Dockerfile) | `(3.1.2)` [:whale:](8.0/alpine3.14/pecl_mailparse/Dockerfile) | `(3.1.2)` [:whale:](8.1/bullseye/pecl_mailparse/Dockerfile) | `(3.1.2)` [:whale:](8.1/alpine3.14/pecl_mailparse/Dockerfile)
[`mcrypt`](https://pecl.php.net/package/mcrypt) _PECL_ | `(1.0.4)` [:whale:](7.3/bullseye/pecl_mcrypt/Dockerfile) | `(1.0.4)` [:whale:](7.3/alpine3.14/pecl_mcrypt/Dockerfile) | `(1.0.4)` [:whale:](7.4/bullseye/pecl_mcrypt/Dockerfile) | `(1.0.4)` [:whale:](7.4/alpine3.14/pecl_mcrypt/Dockerfile) | `(1.0.4)` [:whale:](8.0/bullseye/pecl_mcrypt/Dockerfile) | `(1.0.4)` [:whale:](8.0/alpine3.14/pecl_mcrypt/Dockerfile) | `(1.0.4)` [:whale:](8.1/bullseye/pecl_mcrypt/Dockerfile) | `(1.0.4)` [:whale:](8.1/alpine3.14/pecl_mcrypt/Dockerfile)
[`memcache`](https://pecl.php.net/package/memcache) _PECL_ | `(4.0.5.2)` [:whale:](7.3/bullseye/pecl_memcache/Dockerfile) | `(4.0.5.2)` [:whale:](7.3/alpine3.14/pecl_memcache/Dockerfile) | `(4.0.5.2)` [:whale:](7.4/bullseye/pecl_memcache/Dockerfile) | `(4.0.5.2)` [:whale:](7.4/alpine3.14/pecl_memcache/Dockerfile) | `(8.0)` [:whale:](8.0/bullseye/pecl_memcache/Dockerfile) | `(8.0)` [:whale:](8.0/alpine3.14/pecl_memcache/Dockerfile) | `(8.1)` [:whale:](8.1/bullseye/pecl_memcache/Dockerfile) | `(8.1)` [:whale:](8.1/alpine3.14/pecl_memcache/Dockerfile)
[`memcached`](https://pecl.php.net/package/memcached) _PECL_ | `(3.1.5)` [:whale:](7.3/bullseye/pecl_memcached/Dockerfile) | `(3.1.5)` [:whale:](7.3/alpine3.14/pecl_memcached/Dockerfile) | `(3.1.5)` [:whale:](7.4/bullseye/pecl_memcached/Dockerfile) | `(3.1.5)` [:whale:](7.4/alpine3.14/pecl_memcached/Dockerfile) | `(3.1.5)` [:whale:](8.0/bullseye/pecl_memcached/Dockerfile) | `(3.1.5)` [:whale:](8.0/alpine3.14/pecl_memcached/Dockerfile) | `(3.1.5)` [:whale:](8.1/bullseye/pecl_memcached/Dockerfile) | `(3.1.5)` [:whale:](8.1/alpine3.14/pecl_memcached/Dockerfile)
[`mongodb`](https://pecl.php.net/package/mongodb) _PECL_ | `(1.11.1)` [:whale:](7.3/bullseye/pecl_mongodb/Dockerfile) | `(1.11.1)` [:whale:](7.3/alpine3.14/pecl_mongodb/Dockerfile) | `(1.11.1)` [:whale:](7.4/bullseye/pecl_mongodb/Dockerfile) | `(1.11.1)` [:whale:](7.4/alpine3.14/pecl_mongodb/Dockerfile) | `(1.11.1)` [:whale:](8.0/bullseye/pecl_mongodb/Dockerfile) | `(1.11.1)` [:whale:](8.0/alpine3.14/pecl_mongodb/Dockerfile) | `(1.11.1)` [:whale:](8.1/bullseye/pecl_mongodb/Dockerfile) | `(1.11.1)` [:whale:](8.1/alpine3.14/pecl_mongodb/Dockerfile)
[`mysqli`](https://php.net/mysqli) | [:whale:](7.3/bullseye/mysqli/Dockerfile) | [:whale:](7.3/alpine3.14/mysqli/Dockerfile) | [:whale:](7.4/bullseye/mysqli/Dockerfile) | [:whale:](7.4/alpine3.14/mysqli/Dockerfile) | [:whale:](8.0/bullseye/mysqli/Dockerfile) | [:whale:](8.0/alpine3.14/mysqli/Dockerfile) | [:whale:](8.1/bullseye/mysqli/Dockerfile) | [:whale:](8.1/alpine3.14/mysqli/Dockerfile)
[`newrelic`](https://docs.newrelic.com/docs/apm/agents/php-agent/) | `(9.18.1.303)` [:whale:](7.3/bullseye/newrelic/Dockerfile) | `(9.18.1.303)` [:whale:](7.3/alpine3.14/newrelic/Dockerfile) | `(9.18.1.303)` [:whale:](7.4/bullseye/newrelic/Dockerfile) | `(9.18.1.303)` [:whale:](7.4/alpine3.14/newrelic/Dockerfile) | `(9.18.1.303)` [:whale:](8.0/bullseye/newrelic/Dockerfile) | `(9.18.1.303)` [:whale:](8.0/alpine3.14/newrelic/Dockerfile) | :x: | :x:
[`opcache`](https://php.net/opcache) | [:whale:](7.3/bullseye/opcache/Dockerfile) | [:whale:](7.3/alpine3.14/opcache/Dockerfile) | [:whale:](7.4/bullseye/opcache/Dockerfile) | [:whale:](7.4/alpine3.14/opcache/Dockerfile) | [:whale:](8.0/bullseye/opcache/Dockerfile) | [:whale:](8.0/alpine3.14/opcache/Dockerfile) | [:whale:](8.1/bullseye/opcache/Dockerfile) | [:whale:](8.1/alpine3.14/opcache/Dockerfile)
[`pcntl`](https://php.net/pcntl) | [:whale:](7.3/bullseye/pcntl/Dockerfile) | [:whale:](7.3/alpine3.14/pcntl/Dockerfile) | [:whale:](7.4/bullseye/pcntl/Dockerfile) | [:whale:](7.4/alpine3.14/pcntl/Dockerfile) | [:whale:](8.0/bullseye/pcntl/Dockerfile) | [:whale:](8.0/alpine3.14/pcntl/Dockerfile) | [:whale:](8.1/bullseye/pcntl/Dockerfile) | [:whale:](8.1/alpine3.14/pcntl/Dockerfile)
[`pdo_mysql`](https://php.net/pdo_mysql) | [:whale:](7.3/bullseye/pdo_mysql/Dockerfile) | [:whale:](7.3/alpine3.14/pdo_mysql/Dockerfile) | [:whale:](7.4/bullseye/pdo_mysql/Dockerfile) | [:whale:](7.4/alpine3.14/pdo_mysql/Dockerfile) | [:whale:](8.0/bullseye/pdo_mysql/Dockerfile) | [:whale:](8.0/alpine3.14/pdo_mysql/Dockerfile) | [:whale:](8.1/bullseye/pdo_mysql/Dockerfile) | [:whale:](8.1/alpine3.14/pdo_mysql/Dockerfile)
[`pdo_pgsql`](https://php.net/pdo_pgsql) | [:whale:](7.3/bullseye/pdo_pgsql/Dockerfile) | [:whale:](7.3/alpine3.14/pdo_pgsql/Dockerfile) | [:whale:](7.4/bullseye/pdo_pgsql/Dockerfile) | [:whale:](7.4/alpine3.14/pdo_pgsql/Dockerfile) | [:whale:](8.0/bullseye/pdo_pgsql/Dockerfile) | [:whale:](8.0/alpine3.14/pdo_pgsql/Dockerfile) | [:whale:](8.1/bullseye/pdo_pgsql/Dockerfile) | [:whale:](8.1/alpine3.14/pdo_pgsql/Dockerfile)
[`pgsql`](https://php.net/pgsql) | [:whale:](7.3/bullseye/pgsql/Dockerfile) | [:whale:](7.3/alpine3.14/pgsql/Dockerfile) | [:whale:](7.4/bullseye/pgsql/Dockerfile) | [:whale:](7.4/alpine3.14/pgsql/Dockerfile) | [:whale:](8.0/bullseye/pgsql/Dockerfile) | [:whale:](8.0/alpine3.14/pgsql/Dockerfile) | [:whale:](8.1/bullseye/pgsql/Dockerfile) | [:whale:](8.1/alpine3.14/pgsql/Dockerfile)
[`phpiredis`](https://github.com/nrk/phpiredis) | `(1.0.1)` [:whale:](7.3/bullseye/phpiredis/Dockerfile) | :x: | `(1.0.1)` [:whale:](7.4/bullseye/phpiredis/Dockerfile) | :x: | `(1.0.1)` [:whale:](8.0/bullseye/phpiredis/Dockerfile) | :x: | `(1.0.1)` [:whale:](8.1/bullseye/phpiredis/Dockerfile) | :x:
[`protobuf`](https://pecl.php.net/package/protobuf) _PECL_ | `(3.19.1)` [:whale:](7.3/bullseye/pecl_protobuf/Dockerfile) | `(3.19.1)` [:whale:](7.3/alpine3.14/pecl_protobuf/Dockerfile) | `(3.19.1)` [:whale:](7.4/bullseye/pecl_protobuf/Dockerfile) | `(3.19.1)` [:whale:](7.4/alpine3.14/pecl_protobuf/Dockerfile) | `(3.19.1)` [:whale:](8.0/bullseye/pecl_protobuf/Dockerfile) | `(3.19.1)` [:whale:](8.0/alpine3.14/pecl_protobuf/Dockerfile) | :x: | :x:
[`redis`](https://pecl.php.net/package/redis) _PECL_ | `(5.3.4)` [:whale:](7.3/bullseye/pecl_redis/Dockerfile) | `(5.3.4)` [:whale:](7.3/alpine3.14/pecl_redis/Dockerfile) | `(5.3.4)` [:whale:](7.4/bullseye/pecl_redis/Dockerfile) | `(5.3.4)` [:whale:](7.4/alpine3.14/pecl_redis/Dockerfile) | `(5.3.4)` [:whale:](8.0/bullseye/pecl_redis/Dockerfile) | `(5.3.4)` [:whale:](8.0/alpine3.14/pecl_redis/Dockerfile) | `(5.3.4)` [:whale:](8.1/bullseye/pecl_redis/Dockerfile) | `(5.3.4)` [:whale:](8.1/alpine3.14/pecl_redis/Dockerfile)
[`seaslog`](https://pecl.php.net/package/seaslog) _PECL_ | `(2.2.0)` [:whale:](7.3/bullseye/pecl_seaslog/Dockerfile) | `(2.2.0)` [:whale:](7.3/alpine3.14/pecl_seaslog/Dockerfile) | `(2.2.0)` [:whale:](7.4/bullseye/pecl_seaslog/Dockerfile) | `(2.2.0)` [:whale:](7.4/alpine3.14/pecl_seaslog/Dockerfile) | `(2.2.0)` [:whale:](8.0/bullseye/pecl_seaslog/Dockerfile) | `(2.2.0)` [:whale:](8.0/alpine3.14/pecl_seaslog/Dockerfile) | `(2.2.0)` [:whale:](8.1/bullseye/pecl_seaslog/Dockerfile) | `(2.2.0)` [:whale:](8.1/alpine3.14/pecl_seaslog/Dockerfile)
[`snmp`](https://php.net/snmp) | [:whale:](7.3/bullseye/snmp/Dockerfile) | [:whale:](7.3/alpine3.14/snmp/Dockerfile) | [:whale:](7.4/bullseye/snmp/Dockerfile) | [:whale:](7.4/alpine3.14/snmp/Dockerfile) | [:whale:](8.0/bullseye/snmp/Dockerfile) | [:whale:](8.0/alpine3.14/snmp/Dockerfile) | [:whale:](8.1/bullseye/snmp/Dockerfile) | [:whale:](8.1/alpine3.14/snmp/Dockerfile)
[`soap`](https://php.net/soap) | [:whale:](7.3/bullseye/soap/Dockerfile) | [:whale:](7.3/alpine3.14/soap/Dockerfile) | [:whale:](7.4/bullseye/soap/Dockerfile) | [:whale:](7.4/alpine3.14/soap/Dockerfile) | [:whale:](8.0/bullseye/soap/Dockerfile) | [:whale:](8.0/alpine3.14/soap/Dockerfile) | [:whale:](8.1/bullseye/soap/Dockerfile) | [:whale:](8.1/alpine3.14/soap/Dockerfile)
[`sockets`](https://php.net/sockets) | [:whale:](7.3/bullseye/sockets/Dockerfile) | [:whale:](7.3/alpine3.14/sockets/Dockerfile) | [:whale:](7.4/bullseye/sockets/Dockerfile) | [:whale:](7.4/alpine3.14/sockets/Dockerfile) | [:whale:](8.0/bullseye/sockets/Dockerfile) | [:whale:](8.0/alpine3.14/sockets/Dockerfile) | [:whale:](8.1/bullseye/sockets/Dockerfile) | [:whale:](8.1/alpine3.14/sockets/Dockerfile)
[`timezonedb`](https://pecl.php.net/package/timezonedb) _PECL_ | `(2021.5)` [:whale:](7.3/bullseye/pecl_timezonedb/Dockerfile) | `(2021.5)` [:whale:](7.3/alpine3.14/pecl_timezonedb/Dockerfile) | `(2021.5)` [:whale:](7.4/bullseye/pecl_timezonedb/Dockerfile) | `(2021.5)` [:whale:](7.4/alpine3.14/pecl_timezonedb/Dockerfile) | `(2021.5)` [:whale:](8.0/bullseye/pecl_timezonedb/Dockerfile) | `(2021.5)` [:whale:](8.0/alpine3.14/pecl_timezonedb/Dockerfile) | `(2021.5)` [:whale:](8.1/bullseye/pecl_timezonedb/Dockerfile) | `(2021.5)` [:whale:](8.1/alpine3.14/pecl_timezonedb/Dockerfile)
[`uuid`](https://pecl.php.net/package/uuid) _PECL_ | `(1.2.0)` [:whale:](7.3/bullseye/pecl_uuid/Dockerfile) | `(1.2.0)` [:whale:](7.3/alpine3.14/pecl_uuid/Dockerfile) | `(1.2.0)` [:whale:](7.4/bullseye/pecl_uuid/Dockerfile) | `(1.2.0)` [:whale:](7.4/alpine3.14/pecl_uuid/Dockerfile) | `(1.2.0)` [:whale:](8.0/bullseye/pecl_uuid/Dockerfile) | `(1.2.0)` [:whale:](8.0/alpine3.14/pecl_uuid/Dockerfile) | `(1.2.0)` [:whale:](8.1/bullseye/pecl_uuid/Dockerfile) | `(1.2.0)` [:whale:](8.1/alpine3.14/pecl_uuid/Dockerfile)
[`var_representation`](https://pecl.php.net/package/var_representation) _PECL_ | `(0.1.1)` [:whale:](7.3/bullseye/pecl_var_representation/Dockerfile) | `(0.1.1)` [:whale:](7.3/alpine3.14/pecl_var_representation/Dockerfile) | `(0.1.1)` [:whale:](7.4/bullseye/pecl_var_representation/Dockerfile) | `(0.1.1)` [:whale:](7.4/alpine3.14/pecl_var_representation/Dockerfile) | `(0.1.1)` [:whale:](8.0/bullseye/pecl_var_representation/Dockerfile) | `(0.1.1)` [:whale:](8.0/alpine3.14/pecl_var_representation/Dockerfile) | `(0.1.1)` [:whale:](8.1/bullseye/pecl_var_representation/Dockerfile) | `(0.1.1)` [:whale:](8.1/alpine3.14/pecl_var_representation/Dockerfile)
[`xdebug`](https://pecl.php.net/package/xdebug) _PECL_ | `(3.1.2)` [:whale:](7.3/bullseye/pecl_xdebug/Dockerfile) | `(3.1.2)` [:whale:](7.3/alpine3.14/pecl_xdebug/Dockerfile) | `(3.1.2)` [:whale:](7.4/bullseye/pecl_xdebug/Dockerfile) | `(3.1.2)` [:whale:](7.4/alpine3.14/pecl_xdebug/Dockerfile) | `(3.1.2)` [:whale:](8.0/bullseye/pecl_xdebug/Dockerfile) | `(3.1.2)` [:whale:](8.0/alpine3.14/pecl_xdebug/Dockerfile) | `(3.1.2)` [:whale:](8.1/bullseye/pecl_xdebug/Dockerfile) | `(3.1.2)` [:whale:](8.1/alpine3.14/pecl_xdebug/Dockerfile)
[`xhprof`](https://pecl.php.net/package/xhprof) _PECL_ | `(2.3.5)` [:whale:](7.3/bullseye/pecl_xhprof/Dockerfile) | `(2.3.5)` [:whale:](7.3/alpine3.14/pecl_xhprof/Dockerfile) | `(2.3.5)` [:whale:](7.4/bullseye/pecl_xhprof/Dockerfile) | `(2.3.5)` [:whale:](7.4/alpine3.14/pecl_xhprof/Dockerfile) | `(2.3.5)` [:whale:](8.0/bullseye/pecl_xhprof/Dockerfile) | `(2.3.5)` [:whale:](8.0/alpine3.14/pecl_xhprof/Dockerfile) | `(2.3.5)` [:whale:](8.1/bullseye/pecl_xhprof/Dockerfile) | `(2.3.5)` [:whale:](8.1/alpine3.14/pecl_xhprof/Dockerfile)
[`yaml`](https://pecl.php.net/package/yaml) _PECL_ | `(2.2.2)` [:whale:](7.3/bullseye/pecl_yaml/Dockerfile) | `(2.2.2)` [:whale:](7.3/alpine3.14/pecl_yaml/Dockerfile) | `(2.2.2)` [:whale:](7.4/bullseye/pecl_yaml/Dockerfile) | `(2.2.2)` [:whale:](7.4/alpine3.14/pecl_yaml/Dockerfile) | `(2.2.2)` [:whale:](8.0/bullseye/pecl_yaml/Dockerfile) | `(2.2.2)` [:whale:](8.0/alpine3.14/pecl_yaml/Dockerfile) | `(2.2.2)` [:whale:](8.1/bullseye/pecl_yaml/Dockerfile) | `(2.2.2)` [:whale:](8.1/alpine3.14/pecl_yaml/Dockerfile)
[`zip`](https://pecl.php.net/package/zip) _PECL_ | `(1.20.0)` [:whale:](7.3/bullseye/pecl_zip/Dockerfile) | `(1.20.0)` [:whale:](7.3/alpine3.14/pecl_zip/Dockerfile) | `(1.20.0)` [:whale:](7.4/bullseye/pecl_zip/Dockerfile) | `(1.20.0)` [:whale:](7.4/alpine3.14/pecl_zip/Dockerfile) | `(1.20.0)` [:whale:](8.0/bullseye/pecl_zip/Dockerfile) | `(1.20.0)` [:whale:](8.0/alpine3.14/pecl_zip/Dockerfile) | `(1.20.0)` [:whale:](8.1/bullseye/pecl_zip/Dockerfile) | `(1.20.0)` [:whale:](8.1/alpine3.14/pecl_zip/Dockerfile)
[`zip`](https://php.net/zip) | [:whale:](7.3/bullseye/zip/Dockerfile) | [:whale:](7.3/alpine3.14/zip/Dockerfile) | [:whale:](7.4/bullseye/zip/Dockerfile) | [:whale:](7.4/alpine3.14/zip/Dockerfile) | [:whale:](8.0/bullseye/zip/Dockerfile) | [:whale:](8.0/alpine3.14/zip/Dockerfile) | [:whale:](8.1/bullseye/zip/Dockerfile) | [:whale:](8.1/alpine3.14/zip/Dockerfile)
[`zstd`](https://pecl.php.net/package/zstd) _PECL_ | `(0.11.0)` [:whale:](7.3/bullseye/pecl_zstd/Dockerfile) | `(0.11.0)` [:whale:](7.3/alpine3.14/pecl_zstd/Dockerfile) | `(0.11.0)` [:whale:](7.4/bullseye/pecl_zstd/Dockerfile) | `(0.11.0)` [:whale:](7.4/alpine3.14/pecl_zstd/Dockerfile) | `(0.11.0)` [:whale:](8.0/bullseye/pecl_zstd/Dockerfile) | `(0.11.0)` [:whale:](8.0/alpine3.14/pecl_zstd/Dockerfile) | `(0.11.0)` [:whale:](8.1/bullseye/pecl_zstd/Dockerfile) | `(0.11.0)` [:whale:](8.1/alpine3.14/pecl_zstd/Dockerfile)

### Limited by dependencies to older OS

Extension | PHP `7.3` `buster` | PHP `7.3` `alpine3.14` | PHP `7.4` `buster` | PHP `7.4` `alpine3.14` | PHP `8.0` `buster` | PHP `8.0` `alpine3.14` | PHP `8.1` `buster` | PHP `8.1` `alpine3.14`
----------|:------------------:|:----------------------:|:------------------:|:----------------------:|:------------------:|:----------------------:|:---------------------:|:-------------------------:
[`pdo_sqlsrv`](https://pecl.php.net/package/pdo_sqlsrv) _PECL_ | `(5.9.0)` [:whale:](7.3/buster/pecl_pdo_sqlsrv/Dockerfile) | `(5.9.0)` [:whale:](7.3/alpine3.14/pecl_pdo_sqlsrv/Dockerfile) | `(5.9.0)` [:whale:](7.4/buster/pecl_pdo_sqlsrv/Dockerfile) | `(5.9.0)` [:whale:](7.4/alpine3.14/pecl_pdo_sqlsrv/Dockerfile) | `(5.9.0)` [:whale:](8.0/buster/pecl_pdo_sqlsrv/Dockerfile) | `(5.9.0)` [:whale:](8.0/alpine3.14/pecl_pdo_sqlsrv/Dockerfile) | `(5.10.0beta1)` [:whale:](8.1/buster/pecl_pdo_sqlsrv/Dockerfile) | `(5.10.0beta1)` [:whale:](8.1/alpine3.14/pecl_pdo_sqlsrv/Dockerfile)
[`sqlsrv`](https://pecl.php.net/package/sqlsrv) _PECL_ | `(5.9.0)` [:whale:](7.3/buster/pecl_sqlsrv/Dockerfile) | `(5.9.0)` [:whale:](7.3/alpine3.14/pecl_sqlsrv/Dockerfile) | `(5.9.0)` [:whale:](7.4/buster/pecl_sqlsrv/Dockerfile) | `(5.9.0)` [:whale:](7.4/alpine3.14/pecl_sqlsrv/Dockerfile) | `(5.9.0)` [:whale:](8.0/buster/pecl_sqlsrv/Dockerfile) | `(5.9.0)` [:whale:](8.0/alpine3.14/pecl_sqlsrv/Dockerfile) | `(5.10.0beta1)` [:whale:](8.1/buster/pecl_sqlsrv/Dockerfile) | `(5.10.0beta1)` [:whale:](8.1/alpine3.14/pecl_sqlsrv/Dockerfile)
