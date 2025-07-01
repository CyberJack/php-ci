# PHP CI Docker files

A small set of alpine based docker files for use within and CI environment.

## Usage

The get more information about the build options, run:

    make help

Example:

    > make help

    —— 🎵 🐳 The PHP-CI Makefile 🐳 🎵 —————————————————————————————————
    help                           Outputs this help screen
    —— 🐘 Commands 🐘 ———————————————————————————————————————————————————
    build-all                      Build the php-ci docker images
    build-8.4                      Build PHP 8.4 image
    build-8.3                      Build PHP 8.3 image
    build-8.2                      Build PHP 8.2 image
    build-8.1                      Build PHP 8.1 image
    build-8.0                      Build PHP 8.0 image
    build-7.4                      Build PHP 7.4 image

To build all the php-ci images, run on of the following commands: 

    make
    make build-all

To build only a specific image, run:

    make build-<version>
    
    example:
    make build-8.4

## Versions

The following docker image will be created

* cyberjack/php-ci:8.4
* cyberjack/php-ci:8.3
* cyberjack/php-ci:8.2
* cyberjack/php-ci:8.1
* cyberjack/php-ci:8.0
* cyberjack/php-ci:7.4

## Usage

    docker run --rm -it --user 1000:1000 -v ${PWD}:/app cyberjack/php-ci:8.4 bash

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

|              | 7.4     | 8.0     | 8.1     | 8.2     | 8.3     | 8.4     |
|--------------|---------|---------|---------|---------|---------|---------|
| `amqp`       | &check; | &check; | &check; | &check; | &check; | &check; |    
| `bcmath`     | &check; | &check; | &check; | &check; | &check; | &check; |    
| `bz2`        | &check; | &check; | &check; | &check; | &check; | &check; |    
| `calendar`   | &check; | &check; | &check; | &check; | &check; | &check; |    
| `Core`       | &check; | &check; | &check; | &check; | &check; | &check; |    
| `ctype`      | &check; | &check; | &check; | &check; | &check; | &check; |    
| `curl`       | &check; | &check; | &check; | &check; | &check; | &check; |    
| `date`       | &check; | &check; | &check; | &check; | &check; | &check; |    
| `dom`        | &check; | &check; | &check; | &check; | &check; | &check; |    
| `enchant`    | &check; | &check; | &check; | &check; | &check; | &check; |    
| `exif`       | &check; | &check; | &check; | &check; | &check; | &check; |    
| `FFI`        | &check; | &check; | &check; | &check; | &check; | &check; |    
| `fileinfo`   | &check; | &check; | &check; | &check; | &check; | &check; |    
| `filter`     | &check; | &check; | &check; | &check; | &check; | &check; |    
| `ftp`        | &check; | &check; | &check; | &check; | &check; | &check; |    
| `gd`         | &check; | &check; | &check; | &check; | &check; | &check; |    
| `gettext`    | &check; | &check; | &check; | &check; | &check; | &check; |    
| `gmp`        | &check; | &check; | &check; | &check; | &check; | &check; |    
| `hash`       | &check; | &check; | &check; | &check; | &check; | &check; |    
| `iconv`      | &check; | &check; | &check; | &check; | &check; | &check; |    
| `imap`       | &check; | &check; | &check; | &check; | &check; | &check; |    
| `intl`       | &check; | &check; | &check; | &check; | &check; | &check; |    
| `json`       | &check; | &check; | &check; | &check; | &check; | &check; |    
| `ldap`       | &check; | &check; | &check; | &check; | &check; | &check; |    
| `libxml`     | &check; | &check; | &check; | &check; | &check; | &check; |    
| `mbstring`   | &check; | &check; | &check; | &check; | &check; | &check; |    
| `mysqli`     | &check; | &check; | &check; | &check; | &check; | &check; |    
| `mysqlnd`    | &check; | &check; | &check; | &check; | &check; | &check; |    
| `openssl`    | &check; | &check; | &check; | &check; | &check; | &check; |    
| `pcntl`      | &check; | &check; | &check; | &check; | &check; | &check; |    
| `pcre`       | &check; | &check; | &check; | &check; | &check; | &check; |    
| `PDO`        | &check; | &check; | &check; | &check; | &check; | &check; |    
| `pdo_mysql`  | &check; | &check; | &check; | &check; | &check; | &check; |    
| `pdo_pgsql`  | &check; | &check; | &check; | &check; | &check; | &check; |    
| `pdo_sqlite` | &check; | &check; | &check; | &check; | &check; | &check; |    
| `pgsql`      | &check; | &check; | &check; | &check; | &check; | &check; |    
| `Phar`       | &check; | &check; | &check; | &check; | &check; | &check; |    
| `posix`      | &check; | &check; | &check; | &check; | &check; | &check; |    
| `random`     |         |         |         | &check; | &check; | &check; |    
| `readline`   | &check; | &check; | &check; | &check; | &check; | &check; |    
| `Reflection` | &check; | &check; | &check; | &check; | &check; | &check; |    
| `session`    | &check; | &check; | &check; | &check; | &check; | &check; |    
| `SimpleXML`  | &check; | &check; | &check; | &check; | &check; | &check; |    
| `snmp`       | &check; | &check; | &check; | &check; | &check; | &check; |    
| `soap`       | &check; | &check; | &check; | &check; | &check; | &check; |    
| `sockets`    | &check; | &check; | &check; | &check; | &check; | &check; |    
| `sodium`     | &check; | &check; | &check; | &check; | &check; | &check; |    
| `SPL`        | &check; | &check; | &check; | &check; | &check; | &check; |    
| `standard`   | &check; | &check; | &check; | &check; | &check; | &check; |    
| `tokenizer`  | &check; | &check; | &check; | &check; | &check; | &check; |    
| `xml`        | &check; | &check; | &check; | &check; | &check; | &check; |    
| `xmlreader`  | &check; | &check; | &check; | &check; | &check; | &check; |    
| `xmlwriter`  | &check; | &check; | &check; | &check; | &check; | &check; |    
| `xsl`        | &check; | &check; | &check; | &check; | &check; | &check; |    
| `zip`        | &check; | &check; | &check; | &check; | &check; | &check; |    
| `zlib`       | &check; | &check; | &check; | &check; | &check; | &check; |    
