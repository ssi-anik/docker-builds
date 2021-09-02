# FPM Builds

## 8.0 FPM

Image: `sirajul/php:fpm-80-latest` includes

- base image: `php:8.0-fpm`
- library: `libpng-dev`, `curl`, `nano`, `unzip`, `zip`, `git`, `jq`
- extension: `pdo_pgsql`, `pdo_mysql`, `gd`, `redis`, `opcache`
- executable: `composer` (version: 2), `bash`

## 7.4 FPM

Image: `sirajul/php:fpm-74-latest` includes

- base image: `php:7.4-fpm`
- library: `libpng-dev`, `curl`, `nano`, `unzip`, `zip`, `git`, `jq`
- extension: `pdo_pgsql`, `pdo_mysql`, `gd`, `redis`, `opcache`
- executable: `composer` (version: 2), `bash`
