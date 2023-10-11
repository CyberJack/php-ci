# PHP CI Docker files

A small set of alpine based docker files for use within and CI environment.

## Usage

Run the following command to build the images 

    make

## Versions

The following docker image will be created

* cyberjack/php-ci:7.2
* cyberjack/php-ci:7.3
* cyberjack/php-ci:7.4
* cyberjack/php-ci:8.0
* cyberjack/php-ci:8.1
* cyberjack/php-ci:8.2
* cyberjack/php-ci:8.3 (unreleased)

## Usage

    docker run --rm -it --user 1000:1000 -v ${PWD}:/app cyberjack/php-ci:8.2 bash

Replace `1000:1000` with your userid and groupid.

## Software and modules

### Applications

* bash
* curl
* findutils
* git
* openssh-client
* patch
* rsync
* zip
* composer 1 (executable as `composer1`)
* composer 2 (executable as `composer`)

### Modules

|                | 7.2     | 7.3     | 7.4     | 8.0     | 8.      | 8.2     | 8.3     |
|----------------|---------|---------|---------|---------|---------|---------|---------|
| `bcmath`       | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| `ctype`        | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| `curl`         | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| `phpdbg`       | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| `dom`          | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| `ffi`          |         |         |         |         |         | &check; | &check; |
| `fileinfo`     | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| `ftp`          | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| `gd`           | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| `iconv`        | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| `imap`         | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| `intl`         | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| `json`         | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| `mbstring`     | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| `mysqli`       | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| `openssl`      | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| `pcntl`        | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| `pdo_mysql`    | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| `pdo_pgsql`    | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| `pdo_sqlite`   | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| `pecl-mongodb` | &check; |         | &check; | &check; | &check; | &check; | &check; |
| `pgsql`        | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| `phar`         | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| `phpdbg`       | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| `posix`        | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| `session`      | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| `simplexml`    | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| `soap`         | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| `sockets`      | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| `sodium`       | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| `tokenizer`    | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| `xml`          | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| `xmlreader`    | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| `xmlwriter`    | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| `xsl`          | &check; | &check; | &check; | &check; | &check; | &check; | &check; |
| `zip`          | &check; | &check; | &check; | &check; | &check; | &check; | &check; |

