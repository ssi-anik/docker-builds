# PHP Builds

:warning: **WARNING: DON'T USE IN PRODUCTION. THERE ARE STILL ROOM FOR OPTIMIZATION. GO AHEAD AND DO IT**

## Images

|  Base Image   |  Tag                           | Exposed Ports |
|---------------|--------------------------------|---------------|
| `php:8.1-fpm` | `sirajul/php:fpm-81-latest`    | `80`, `9000`  |
| `php:8.0-fpm` | `sirajul/php:fpm-80-latest`    | `80`, `9000`  |
| `php:7.4-fpm` | `sirajul/php:fpm-74-latest`    | `80`, `9000`  |
| `php:8.1-cli` | `sirajul/php:worker-81-latest` | **N/A**       |
| `php:8.0-cli` | `sirajul/php:worker-80-latest` | **N/A**       |
| `php:7.4-cli` | `sirajul/php:worker-74-latest` | **N/A**       |

**NOTE**: Image `fpm-*` has `nginx` installed as web server listening on port `80` with project root set to `/var/www/html/public`.

## Executables

- `bash`
- `curl`
- `nano`
- `vim`
- `unzip`
- `zip`
- `git`
- `jq`
- `composer` (v2)

## Extending base image

- To install a new php module, you can also use [`/usr/local/bin/install-php-extensions`](https://github.com/mlocati/docker-php-extension-installer), which takes care of all the dependencies e.g; `/usr/local/bin/install-php-extensions xdebug opcache gd`.
- Supervisor is available in both the `fpm-*` and `worker-*` images. To add a new supervisor configuration, add it to `/etc/supervisor/conf.d/` directory.

## Available Modules

- `bcmath`
- `curl`
- `date`
- `dom`
- `fileinfo`
- `filter`
- `ftp`
- `gd`
- `gmp`
- `hash`
- `iconv`
- `imagick`
- `json`
- `libxml`
- `mbstring`
- `mysqlnd`
- `openssl`
- `pcre`
- `PDO`
- `pdo_mysql`
- `pdo_pgsql`
- `pdo_sqlite`
- `Phar`
- `posix`
- `readline`
- `redis`
- `Reflection`
- `session`
- `SimpleXML`
- `sodium`
- `SPL`
- `sqlite3`
- `standard`
- `tokenizer`
- `xml`
- `xmlreader`
- `xmlwriter`
- `Zend OPcache`
- `zlib`
