# fox91/php-extensions

[![Build Status](https://github.com/fox91/docker-php-extensions/actions/workflows/ci.yaml/badge.svg)](https://github.com/fox91/docker-php-extensions/actions/workflows/ci.yaml)

## [Supported PHP versions](https://www.php.net/supported-versions.php)

Branch | Initial Release | Active Support Until | Security Support Until
-------|:---------------:|:--------------------:|:----------------------:
`8.0` | 26 Nov 2020 | 26 Nov 2022 | 26 Nov 2023
`8.1` | 25 Nov 2021 | 25 Nov 2023 | 25 Nov 2024
`8.2` | 08 Dec 2022 | 08 Dec 2024 | 08 Dec 2025

## Supported PHP extensions

Extension | PHP `8.0` `bullseye` | PHP `8.0` `alpine3.16` | PHP `8.1` `bookworm` | PHP `8.1` `alpine3.18` | PHP `8.2` `bookworm` | PHP `8.2` `alpine3.18`
----------|:--------------------:|:----------------------:|:--------------------:|:----------------------:|:--------------------:|:----------------------:
[`amqp`](https://pecl.php.net/package/amqp) _PECL_ | `(1.11.0)` [:whale:](8.0/bullseye/pecl_amqp/Dockerfile) | `(1.11.0)` [:whale:](8.0/alpine3.16/pecl_amqp/Dockerfile) | `(1.11.0)` [:whale:](8.1/bookworm/pecl_amqp/Dockerfile) | `(1.11.0)` [:whale:](8.1/alpine3.18/pecl_amqp/Dockerfile) | `(1.11.0)` [:whale:](8.2/bookworm/pecl_amqp/Dockerfile) | `(1.11.0)` [:whale:](8.2/alpine3.18/pecl_amqp/Dockerfile)
[`apcu`](https://pecl.php.net/package/apcu) _PECL_ | `(5.1.22)` [:whale:](8.0/bullseye/pecl_apcu/Dockerfile) | `(5.1.22)` [:whale:](8.0/alpine3.16/pecl_apcu/Dockerfile) | `(5.1.22)` [:whale:](8.1/bookworm/pecl_apcu/Dockerfile) | `(5.1.22)` [:whale:](8.1/alpine3.18/pecl_apcu/Dockerfile) | `(5.1.22)` [:whale:](8.2/bookworm/pecl_apcu/Dockerfile) | `(5.1.22)` [:whale:](8.2/alpine3.18/pecl_apcu/Dockerfile)
[`ast`](https://pecl.php.net/package/ast) _PECL_ | `(1.1.0)` [:whale:](8.0/bullseye/pecl_ast/Dockerfile) | `(1.1.0)` [:whale:](8.0/alpine3.16/pecl_ast/Dockerfile) | `(1.1.0)` [:whale:](8.1/bookworm/pecl_ast/Dockerfile) | `(1.1.0)` [:whale:](8.1/alpine3.18/pecl_ast/Dockerfile) | `(1.1.0)` [:whale:](8.2/bookworm/pecl_ast/Dockerfile) | `(1.1.0)` [:whale:](8.2/alpine3.18/pecl_ast/Dockerfile)
[`bcmath`](https://php.net/bcmath) | [:whale:](8.0/bullseye/bcmath/Dockerfile) | [:whale:](8.0/alpine3.16/bcmath/Dockerfile) | [:whale:](8.1/bookworm/bcmath/Dockerfile) | [:whale:](8.1/alpine3.18/bcmath/Dockerfile) | [:whale:](8.2/bookworm/bcmath/Dockerfile) | [:whale:](8.2/alpine3.18/bcmath/Dockerfile)
[`bz2`](https://php.net/bz2) | [:whale:](8.0/bullseye/bz2/Dockerfile) | [:whale:](8.0/alpine3.16/bz2/Dockerfile) | [:whale:](8.1/bookworm/bz2/Dockerfile) | [:whale:](8.1/alpine3.18/bz2/Dockerfile) | [:whale:](8.2/bookworm/bz2/Dockerfile) | [:whale:](8.2/alpine3.18/bz2/Dockerfile)
[`dbase`](https://pecl.php.net/package/dbase) _PECL_ | `(7.1.1)` [:whale:](8.0/bullseye/pecl_dbase/Dockerfile) | `(7.1.1)` [:whale:](8.0/alpine3.16/pecl_dbase/Dockerfile) | `(7.1.1)` [:whale:](8.1/bookworm/pecl_dbase/Dockerfile) | `(7.1.1)` [:whale:](8.1/alpine3.18/pecl_dbase/Dockerfile) | `(7.1.1)` [:whale:](8.2/bookworm/pecl_dbase/Dockerfile) | `(7.1.1)` [:whale:](8.2/alpine3.18/pecl_dbase/Dockerfile)
[`ds`](https://pecl.php.net/package/ds) _PECL_ | `(1.4.0)` [:whale:](8.0/bullseye/pecl_ds/Dockerfile) | `(1.4.0)` [:whale:](8.0/alpine3.16/pecl_ds/Dockerfile) | `(1.4.0)` [:whale:](8.1/bookworm/pecl_ds/Dockerfile) | `(1.4.0)` [:whale:](8.1/alpine3.18/pecl_ds/Dockerfile) | `(1.4.0)` [:whale:](8.2/bookworm/pecl_ds/Dockerfile) | `(1.4.0)` [:whale:](8.2/alpine3.18/pecl_ds/Dockerfile)
[`fann`](https://pecl.php.net/package/fann) _PECL_ | `(1.2.0RC2)` [:whale:](8.0/bullseye/pecl_fann/Dockerfile) | `(1.2.0RC2)` [:whale:](8.0/alpine3.16/pecl_fann/Dockerfile) | `(1.2.0RC2)` [:whale:](8.1/bookworm/pecl_fann/Dockerfile) | `(1.2.0RC2)` [:whale:](8.1/alpine3.18/pecl_fann/Dockerfile) | `(1.2.0RC2)` [:whale:](8.2/bookworm/pecl_fann/Dockerfile) | `(1.2.0RC2)` [:whale:](8.2/alpine3.18/pecl_fann/Dockerfile)
[`gd`](https://php.net/gd) | [:whale:](8.0/bullseye/gd/Dockerfile) | [:whale:](8.0/alpine3.16/gd/Dockerfile) | [:whale:](8.1/bookworm/gd/Dockerfile) | [:whale:](8.1/alpine3.18/gd/Dockerfile) | [:whale:](8.2/bookworm/gd/Dockerfile) | [:whale:](8.2/alpine3.18/gd/Dockerfile)
[`gearman`](https://pecl.php.net/package/gearman) _PECL_ | `(2.1.0)` [:whale:](8.0/bullseye/pecl_gearman/Dockerfile) | `(2.1.0)` [:whale:](8.0/alpine3.16/pecl_gearman/Dockerfile) | :x: | :x: | :x: | :x:
[`geospatial`](https://pecl.php.net/package/geospatial) _PECL_ | `(0.3.2)` [:whale:](8.0/bullseye/pecl_geospatial/Dockerfile) | `(0.3.2)` [:whale:](8.0/alpine3.16/pecl_geospatial/Dockerfile) | `(0.3.2)` [:whale:](8.1/bookworm/pecl_geospatial/Dockerfile) | `(0.3.2)` [:whale:](8.1/alpine3.18/pecl_geospatial/Dockerfile) | `(0.3.2)` [:whale:](8.2/bookworm/pecl_geospatial/Dockerfile) | `(0.3.2)` [:whale:](8.2/alpine3.18/pecl_geospatial/Dockerfile)
[`gmp`](https://php.net/gmp) | [:whale:](8.0/bullseye/gmp/Dockerfile) | [:whale:](8.0/alpine3.16/gmp/Dockerfile) | [:whale:](8.1/bookworm/gmp/Dockerfile) | [:whale:](8.1/alpine3.18/gmp/Dockerfile) | [:whale:](8.2/bookworm/gmp/Dockerfile) | [:whale:](8.2/alpine3.18/gmp/Dockerfile)
[`grpc`](https://pecl.php.net/package/grpc) _PECL_ | `(1.56.0)` [:whale:](8.0/bullseye/pecl_grpc/Dockerfile) | `(1.56.0)` [:whale:](8.0/alpine3.16/pecl_grpc/Dockerfile) | `(1.56.0)` [:whale:](8.1/bookworm/pecl_grpc/Dockerfile) | `(1.56.0)` [:whale:](8.1/alpine3.18/pecl_grpc/Dockerfile) | `(1.56.0)` [:whale:](8.2/bookworm/pecl_grpc/Dockerfile) | `(1.56.0)` [:whale:](8.2/alpine3.18/pecl_grpc/Dockerfile)
[`igbinary`](https://pecl.php.net/package/igbinary) _PECL_ | `(3.2.14)` [:whale:](8.0/bullseye/pecl_igbinary/Dockerfile) | `(3.2.14)` [:whale:](8.0/alpine3.16/pecl_igbinary/Dockerfile) | `(3.2.14)` [:whale:](8.1/bookworm/pecl_igbinary/Dockerfile) | `(3.2.14)` [:whale:](8.1/alpine3.18/pecl_igbinary/Dockerfile) | `(3.2.14)` [:whale:](8.2/bookworm/pecl_igbinary/Dockerfile) | `(3.2.14)` [:whale:](8.2/alpine3.18/pecl_igbinary/Dockerfile)
[`imagick`](https://pecl.php.net/package/imagick) _PECL_ | `(3.7.0)` [:whale:](8.0/bullseye/pecl_imagick/Dockerfile) | `(3.7.0)` [:whale:](8.0/alpine3.16/pecl_imagick/Dockerfile) | `(3.7.0)` [:whale:](8.1/bookworm/pecl_imagick/Dockerfile) | `(3.7.0)` [:whale:](8.1/alpine3.18/pecl_imagick/Dockerfile) | `(3.7.0)` [:whale:](8.2/bookworm/pecl_imagick/Dockerfile) | `(3.7.0)` [:whale:](8.2/alpine3.18/pecl_imagick/Dockerfile)
[`imap`](https://php.net/imap) | [:whale:](8.0/bullseye/imap/Dockerfile) | [:whale:](8.0/alpine3.16/imap/Dockerfile) | [:whale:](8.1/bookworm/imap/Dockerfile) | [:whale:](8.1/alpine3.18/imap/Dockerfile) | [:whale:](8.2/bookworm/imap/Dockerfile) | [:whale:](8.2/alpine3.18/imap/Dockerfile)
[`intl`](https://php.net/intl) | [:whale:](8.0/bullseye/intl/Dockerfile) | [:whale:](8.0/alpine3.16/intl/Dockerfile) | [:whale:](8.1/bookworm/intl/Dockerfile) | [:whale:](8.1/alpine3.18/intl/Dockerfile) | [:whale:](8.2/bookworm/intl/Dockerfile) | [:whale:](8.2/alpine3.18/intl/Dockerfile)
[`ldap`](https://php.net/ldap) | [:whale:](8.0/bullseye/ldap/Dockerfile) | [:whale:](8.0/alpine3.16/ldap/Dockerfile) | [:whale:](8.1/bookworm/ldap/Dockerfile) | [:whale:](8.1/alpine3.18/ldap/Dockerfile) | [:whale:](8.2/bookworm/ldap/Dockerfile) | [:whale:](8.2/alpine3.18/ldap/Dockerfile)
[`mailparse`](https://pecl.php.net/package/mailparse) _PECL_ | `(3.1.4)` [:whale:](8.0/bullseye/pecl_mailparse/Dockerfile) | `(3.1.4)` [:whale:](8.0/alpine3.16/pecl_mailparse/Dockerfile) | `(3.1.4)` [:whale:](8.1/bookworm/pecl_mailparse/Dockerfile) | `(3.1.4)` [:whale:](8.1/alpine3.18/pecl_mailparse/Dockerfile) | `(3.1.4)` [:whale:](8.2/bookworm/pecl_mailparse/Dockerfile) | `(3.1.4)` [:whale:](8.2/alpine3.18/pecl_mailparse/Dockerfile)
[`mcrypt`](https://pecl.php.net/package/mcrypt) _PECL_ | `(1.0.6)` [:whale:](8.0/bullseye/pecl_mcrypt/Dockerfile) | `(1.0.6)` [:whale:](8.0/alpine3.16/pecl_mcrypt/Dockerfile) | `(1.0.6)` [:whale:](8.1/bookworm/pecl_mcrypt/Dockerfile) | `(1.0.6)` [:whale:](8.1/alpine3.18/pecl_mcrypt/Dockerfile) | `(1.0.6)` [:whale:](8.2/bookworm/pecl_mcrypt/Dockerfile) | `(1.0.6)` [:whale:](8.2/alpine3.18/pecl_mcrypt/Dockerfile)
[`memcache`](https://pecl.php.net/package/memcache) _PECL_ | `(8.2)` [:whale:](8.0/bullseye/pecl_memcache/Dockerfile) | `(8.2)` [:whale:](8.0/alpine3.16/pecl_memcache/Dockerfile) | `(8.2)` [:whale:](8.1/bookworm/pecl_memcache/Dockerfile) | `(8.2)` [:whale:](8.1/alpine3.18/pecl_memcache/Dockerfile) | `(8.2)` [:whale:](8.2/bookworm/pecl_memcache/Dockerfile) | `(8.2)` [:whale:](8.2/alpine3.18/pecl_memcache/Dockerfile)
[`memcached`](https://pecl.php.net/package/memcached) _PECL_ | `(3.2.0)` [:whale:](8.0/bullseye/pecl_memcached/Dockerfile) | `(3.2.0)` [:whale:](8.0/alpine3.16/pecl_memcached/Dockerfile) | `(3.2.0)` [:whale:](8.1/bookworm/pecl_memcached/Dockerfile) | `(3.2.0)` [:whale:](8.1/alpine3.18/pecl_memcached/Dockerfile) | `(3.2.0)` [:whale:](8.2/bookworm/pecl_memcached/Dockerfile) | `(3.2.0)` [:whale:](8.2/alpine3.18/pecl_memcached/Dockerfile)
[`mongodb`](https://pecl.php.net/package/mongodb) _PECL_ | `(1.16.1)` [:whale:](8.0/bullseye/pecl_mongodb/Dockerfile) | `(1.16.1)` [:whale:](8.0/alpine3.16/pecl_mongodb/Dockerfile) | `(1.16.1)` [:whale:](8.1/bookworm/pecl_mongodb/Dockerfile) | `(1.16.1)` [:whale:](8.1/alpine3.18/pecl_mongodb/Dockerfile) | `(1.16.1)` [:whale:](8.2/bookworm/pecl_mongodb/Dockerfile) | `(1.16.1)` [:whale:](8.2/alpine3.18/pecl_mongodb/Dockerfile)
[`mysqli`](https://php.net/mysqli) | [:whale:](8.0/bullseye/mysqli/Dockerfile) | [:whale:](8.0/alpine3.16/mysqli/Dockerfile) | [:whale:](8.1/bookworm/mysqli/Dockerfile) | [:whale:](8.1/alpine3.18/mysqli/Dockerfile) | [:whale:](8.2/bookworm/mysqli/Dockerfile) | [:whale:](8.2/alpine3.18/mysqli/Dockerfile)
[`newrelic`](https://docs.newrelic.com/docs/apm/agents/php-agent/) | `(10.11.0.3)` [:whale:](8.0/bullseye/newrelic/Dockerfile) | `(10.11.0.3)` [:whale:](8.0/alpine3.16/newrelic/Dockerfile) | `(10.11.0.3)` [:whale:](8.1/bookworm/newrelic/Dockerfile) | `(10.11.0.3)` [:whale:](8.1/alpine3.18/newrelic/Dockerfile) | `(10.11.0.3)` [:whale:](8.2/bookworm/newrelic/Dockerfile) | `(10.11.0.3)` [:whale:](8.2/alpine3.18/newrelic/Dockerfile)
[`opcache`](https://php.net/opcache) | [:whale:](8.0/bullseye/opcache/Dockerfile) | [:whale:](8.0/alpine3.16/opcache/Dockerfile) | [:whale:](8.1/bookworm/opcache/Dockerfile) | [:whale:](8.1/alpine3.18/opcache/Dockerfile) | [:whale:](8.2/bookworm/opcache/Dockerfile) | [:whale:](8.2/alpine3.18/opcache/Dockerfile)
[`pcntl`](https://php.net/pcntl) | [:whale:](8.0/bullseye/pcntl/Dockerfile) | [:whale:](8.0/alpine3.16/pcntl/Dockerfile) | [:whale:](8.1/bookworm/pcntl/Dockerfile) | [:whale:](8.1/alpine3.18/pcntl/Dockerfile) | [:whale:](8.2/bookworm/pcntl/Dockerfile) | [:whale:](8.2/alpine3.18/pcntl/Dockerfile)
[`pdo_mysql`](https://php.net/pdo_mysql) | [:whale:](8.0/bullseye/pdo_mysql/Dockerfile) | [:whale:](8.0/alpine3.16/pdo_mysql/Dockerfile) | [:whale:](8.1/bookworm/pdo_mysql/Dockerfile) | [:whale:](8.1/alpine3.18/pdo_mysql/Dockerfile) | [:whale:](8.2/bookworm/pdo_mysql/Dockerfile) | [:whale:](8.2/alpine3.18/pdo_mysql/Dockerfile)
[`pdo_pgsql`](https://php.net/pdo_pgsql) | [:whale:](8.0/bullseye/pdo_pgsql/Dockerfile) | [:whale:](8.0/alpine3.16/pdo_pgsql/Dockerfile) | [:whale:](8.1/bookworm/pdo_pgsql/Dockerfile) | [:whale:](8.1/alpine3.18/pdo_pgsql/Dockerfile) | [:whale:](8.2/bookworm/pdo_pgsql/Dockerfile) | [:whale:](8.2/alpine3.18/pdo_pgsql/Dockerfile)
[`pgsql`](https://php.net/pgsql) | [:whale:](8.0/bullseye/pgsql/Dockerfile) | [:whale:](8.0/alpine3.16/pgsql/Dockerfile) | [:whale:](8.1/bookworm/pgsql/Dockerfile) | [:whale:](8.1/alpine3.18/pgsql/Dockerfile) | [:whale:](8.2/bookworm/pgsql/Dockerfile) | [:whale:](8.2/alpine3.18/pgsql/Dockerfile)
[`phpiredis`](https://github.com/nrk/phpiredis) | `(1.0.1)` [:whale:](8.0/bullseye/phpiredis/Dockerfile) | `(1.1.x)` [:whale:](8.0/alpine3.16/phpiredis/Dockerfile) | `(1.0.1)` [:whale:](8.1/bookworm/phpiredis/Dockerfile) | `(1.1.x)` [:whale:](8.1/alpine3.18/phpiredis/Dockerfile) | `(1.0.1)` [:whale:](8.2/bookworm/phpiredis/Dockerfile) | `(1.1.x)` [:whale:](8.2/alpine3.18/phpiredis/Dockerfile)
[`protobuf`](https://pecl.php.net/package/protobuf) _PECL_ | `(3.23.4)` [:whale:](8.0/bullseye/pecl_protobuf/Dockerfile) | `(3.23.4)` [:whale:](8.0/alpine3.16/pecl_protobuf/Dockerfile) | `(3.23.4)` [:whale:](8.1/bookworm/pecl_protobuf/Dockerfile) | `(3.23.4)` [:whale:](8.1/alpine3.18/pecl_protobuf/Dockerfile) | `(3.23.4)` [:whale:](8.2/bookworm/pecl_protobuf/Dockerfile) | `(3.23.4)` [:whale:](8.2/alpine3.18/pecl_protobuf/Dockerfile)
[`redis`](https://pecl.php.net/package/redis) _PECL_ | `(5.3.7)` [:whale:](8.0/bullseye/pecl_redis/Dockerfile) | `(5.3.7)` [:whale:](8.0/alpine3.16/pecl_redis/Dockerfile) | `(5.3.7)` [:whale:](8.1/bookworm/pecl_redis/Dockerfile) | `(5.3.7)` [:whale:](8.1/alpine3.18/pecl_redis/Dockerfile) | `(5.3.7)` [:whale:](8.2/bookworm/pecl_redis/Dockerfile) | `(5.3.7)` [:whale:](8.2/alpine3.18/pecl_redis/Dockerfile)
[`seaslog`](https://pecl.php.net/package/seaslog) _PECL_ | `(2.2.0)` [:whale:](8.0/bullseye/pecl_seaslog/Dockerfile) | `(2.2.0)` [:whale:](8.0/alpine3.16/pecl_seaslog/Dockerfile) | `(2.2.0)` [:whale:](8.1/bookworm/pecl_seaslog/Dockerfile) | `(2.2.0)` [:whale:](8.1/alpine3.18/pecl_seaslog/Dockerfile) | `(2.2.0)` [:whale:](8.2/bookworm/pecl_seaslog/Dockerfile) | `(2.2.0)` [:whale:](8.2/alpine3.18/pecl_seaslog/Dockerfile)
[`snmp`](https://php.net/snmp) | [:whale:](8.0/bullseye/snmp/Dockerfile) | [:whale:](8.0/alpine3.16/snmp/Dockerfile) | [:whale:](8.1/bookworm/snmp/Dockerfile) | [:whale:](8.1/alpine3.18/snmp/Dockerfile) | [:whale:](8.2/bookworm/snmp/Dockerfile) | [:whale:](8.2/alpine3.18/snmp/Dockerfile)
[`soap`](https://php.net/soap) | [:whale:](8.0/bullseye/soap/Dockerfile) | [:whale:](8.0/alpine3.16/soap/Dockerfile) | [:whale:](8.1/bookworm/soap/Dockerfile) | [:whale:](8.1/alpine3.18/soap/Dockerfile) | [:whale:](8.2/bookworm/soap/Dockerfile) | [:whale:](8.2/alpine3.18/soap/Dockerfile)
[`sockets`](https://php.net/sockets) | [:whale:](8.0/bullseye/sockets/Dockerfile) | [:whale:](8.0/alpine3.16/sockets/Dockerfile) | [:whale:](8.1/bookworm/sockets/Dockerfile) | [:whale:](8.1/alpine3.18/sockets/Dockerfile) | [:whale:](8.2/bookworm/sockets/Dockerfile) | [:whale:](8.2/alpine3.18/sockets/Dockerfile)
[`timezonedb`](https://pecl.php.net/package/timezonedb) _PECL_ | `(2023.3)` [:whale:](8.0/bullseye/pecl_timezonedb/Dockerfile) | `(2023.3)` [:whale:](8.0/alpine3.16/pecl_timezonedb/Dockerfile) | `(2023.3)` [:whale:](8.1/bookworm/pecl_timezonedb/Dockerfile) | `(2023.3)` [:whale:](8.1/alpine3.18/pecl_timezonedb/Dockerfile) | `(2023.3)` [:whale:](8.2/bookworm/pecl_timezonedb/Dockerfile) | `(2023.3)` [:whale:](8.2/alpine3.18/pecl_timezonedb/Dockerfile)
[`uuid`](https://pecl.php.net/package/uuid) _PECL_ | `(1.2.0)` [:whale:](8.0/bullseye/pecl_uuid/Dockerfile) | `(1.2.0)` [:whale:](8.0/alpine3.16/pecl_uuid/Dockerfile) | `(1.2.0)` [:whale:](8.1/bookworm/pecl_uuid/Dockerfile) | `(1.2.0)` [:whale:](8.1/alpine3.18/pecl_uuid/Dockerfile) | `(1.2.0)` [:whale:](8.2/bookworm/pecl_uuid/Dockerfile) | `(1.2.0)` [:whale:](8.2/alpine3.18/pecl_uuid/Dockerfile)
[`var_representation`](https://pecl.php.net/package/var_representation) _PECL_ | `(0.1.4)` [:whale:](8.0/bullseye/pecl_var_representation/Dockerfile) | `(0.1.4)` [:whale:](8.0/alpine3.16/pecl_var_representation/Dockerfile) | `(0.1.4)` [:whale:](8.1/bookworm/pecl_var_representation/Dockerfile) | `(0.1.4)` [:whale:](8.1/alpine3.18/pecl_var_representation/Dockerfile) | `(0.1.4)` [:whale:](8.2/bookworm/pecl_var_representation/Dockerfile) | `(0.1.4)` [:whale:](8.2/alpine3.18/pecl_var_representation/Dockerfile)
[`xdebug`](https://pecl.php.net/package/xdebug) _PECL_ | `(3.2.1)` [:whale:](8.0/bullseye/pecl_xdebug/Dockerfile) | `(3.2.1)` [:whale:](8.0/alpine3.16/pecl_xdebug/Dockerfile) | `(3.2.1)` [:whale:](8.1/bookworm/pecl_xdebug/Dockerfile) | `(3.2.1)` [:whale:](8.1/alpine3.18/pecl_xdebug/Dockerfile) | `(3.2.1)` [:whale:](8.2/bookworm/pecl_xdebug/Dockerfile) | `(3.2.1)` [:whale:](8.2/alpine3.18/pecl_xdebug/Dockerfile)
[`xhprof`](https://pecl.php.net/package/xhprof) _PECL_ | `(2.3.9)` [:whale:](8.0/bullseye/pecl_xhprof/Dockerfile) | `(2.3.9)` [:whale:](8.0/alpine3.16/pecl_xhprof/Dockerfile) | `(2.3.9)` [:whale:](8.1/bookworm/pecl_xhprof/Dockerfile) | `(2.3.9)` [:whale:](8.1/alpine3.18/pecl_xhprof/Dockerfile) | `(2.3.9)` [:whale:](8.2/bookworm/pecl_xhprof/Dockerfile) | `(2.3.9)` [:whale:](8.2/alpine3.18/pecl_xhprof/Dockerfile)
[`yaml`](https://pecl.php.net/package/yaml) _PECL_ | `(2.2.3)` [:whale:](8.0/bullseye/pecl_yaml/Dockerfile) | `(2.2.3)` [:whale:](8.0/alpine3.16/pecl_yaml/Dockerfile) | `(2.2.3)` [:whale:](8.1/bookworm/pecl_yaml/Dockerfile) | `(2.2.3)` [:whale:](8.1/alpine3.18/pecl_yaml/Dockerfile) | `(2.2.3)` [:whale:](8.2/bookworm/pecl_yaml/Dockerfile) | `(2.2.3)` [:whale:](8.2/alpine3.18/pecl_yaml/Dockerfile)
[`zip`](https://pecl.php.net/package/zip) _PECL_ | `(1.22.1)` [:whale:](8.0/bullseye/pecl_zip/Dockerfile) | `(1.22.1)` [:whale:](8.0/alpine3.16/pecl_zip/Dockerfile) | `(1.22.1)` [:whale:](8.1/bookworm/pecl_zip/Dockerfile) | `(1.22.1)` [:whale:](8.1/alpine3.18/pecl_zip/Dockerfile) | `(1.22.1)` [:whale:](8.2/bookworm/pecl_zip/Dockerfile) | `(1.22.1)` [:whale:](8.2/alpine3.18/pecl_zip/Dockerfile)
[`zip`](https://php.net/zip) | [:whale:](8.0/bullseye/zip/Dockerfile) | [:whale:](8.0/alpine3.16/zip/Dockerfile) | [:whale:](8.1/bookworm/zip/Dockerfile) | [:whale:](8.1/alpine3.18/zip/Dockerfile) | [:whale:](8.2/bookworm/zip/Dockerfile) | [:whale:](8.2/alpine3.18/zip/Dockerfile)
[`zstd`](https://pecl.php.net/package/zstd) _PECL_ | `(0.12.3)` [:whale:](8.0/bullseye/pecl_zstd/Dockerfile) | `(0.12.3)` [:whale:](8.0/alpine3.16/pecl_zstd/Dockerfile) | `(0.12.3)` [:whale:](8.1/bookworm/pecl_zstd/Dockerfile) | `(0.12.3)` [:whale:](8.1/alpine3.18/pecl_zstd/Dockerfile) | `(0.12.3)` [:whale:](8.2/bookworm/pecl_zstd/Dockerfile) | `(0.12.3)` [:whale:](8.2/alpine3.18/pecl_zstd/Dockerfile)
