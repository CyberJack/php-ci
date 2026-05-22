ARG PHP_VERSION=85
ARG ALPINE_VERSION=3.23

FROM alpine:${ALPINE_VERSION}

LABEL org.opencontainers.image.authors="Peter Bottenberg <cyberjack77@gmail.com>" \
      description="Lightweight container to run PHP in ci jobs."

ARG PHP_VERSION

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Add the ci user and group, and install packages
RUN addgroup -S ci \
    && adduser -S -h /home/ci -s /bin/bash -G root -G ci -u 1000 ci \
    \
    && apk --no-cache add \
        bash \
        curl \
        findutils \
        git \
        openssh-client \
        patch \
        rsync \
        zip \
        php${PHP_VERSION} \
        php${PHP_VERSION}-bcmath \
        php${PHP_VERSION}-bz2 \
        php${PHP_VERSION}-calendar \
        php${PHP_VERSION}-ctype \
        php${PHP_VERSION}-curl \
        php${PHP_VERSION}-dom \
        php${PHP_VERSION}-enchant \
        php${PHP_VERSION}-exif \
        php${PHP_VERSION}-ffi \
        php${PHP_VERSION}-fileinfo \
        php${PHP_VERSION}-ftp \
        php${PHP_VERSION}-gd \
        php${PHP_VERSION}-gettext \
        php${PHP_VERSION}-gmp \
        php${PHP_VERSION}-iconv \
        php${PHP_VERSION}-imap \
        php${PHP_VERSION}-intl \
        php${PHP_VERSION}-ldap \
        php${PHP_VERSION}-mbstring \
        php${PHP_VERSION}-mysqli \
        php${PHP_VERSION}-openssl \
        php${PHP_VERSION}-pcntl \
        php${PHP_VERSION}-pdo_mysql \
        php${PHP_VERSION}-pdo_pgsql \
        php${PHP_VERSION}-pdo_sqlite \
        php${PHP_VERSION}-pecl-amqp \
        php${PHP_VERSION}-pecl-pcov \
        $(apk search -q php${PHP_VERSION}-pecl-redis || true) \
        php${PHP_VERSION}-pgsql \
        php${PHP_VERSION}-phar \
        php${PHP_VERSION}-phpdbg \
        php${PHP_VERSION}-posix \
        php${PHP_VERSION}-session \
        php${PHP_VERSION}-simplexml \
        php${PHP_VERSION}-snmp \
        php${PHP_VERSION}-soap \
        php${PHP_VERSION}-sockets \
        php${PHP_VERSION}-sodium \
        php${PHP_VERSION}-tokenizer \
        php${PHP_VERSION}-xml \
        php${PHP_VERSION}-xmlreader \
        php${PHP_VERSION}-xmlwriter \
        php${PHP_VERSION}-xsl \
        php${PHP_VERSION}-zip \
    \
    && ln -sf /usr/bin/php${PHP_VERSION} /usr/bin/php \
    && ln -sf /usr/bin/phpdbg${PHP_VERSION} /usr/bin/phpdbg \
    \
    && mkdir -p /app \
    && chown -R ci:ci /app \
    \
    && echo "alias ll=\"ls -alFh\"" >> /home/ci/.bashrc \
    && chown ci:ci /home/ci/.bashrc

COPY ./php-ini-overrides.ini /etc/php${PHP_VERSION}/conf.d/

ENV PATH="/home/ci/.composer/vendor/bin:${PATH}"
WORKDIR /app

USER ci

CMD ["/bin/bash"]
