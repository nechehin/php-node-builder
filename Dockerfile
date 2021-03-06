FROM node:14.11-alpine

LABEL maintainer "e.nechehin <e.nechehin@gmail.com>"

ARG COMPOSER_VERSION=1.10.13

WORKDIR /home/node

RUN apk add -U \
    php7 \
    php7-dev \
    php7-common \
    php7-apcu \
    php7-bcmath \
    php7-xmlwriter \
    php7-ctype \
    php7-curl \
    php7-exif \
    php7-fileinfo \
    php7-iconv \
    php7-imagick \
    php7-intl \
    php7-json \
    php7-gmp \
    php7-mbstring \
    php7-opcache \
    php7-openssl \
    php7-pcntl \
    php7-mysqlnd \
    php7-pdo \
    php7-pdo_mysql \
    php7-pdo_pgsql \
    php7-phar \
    php7-posix \
    php7-session \
    php7-xml \
    php7-simplexml \
    php7-mcrypt \
    php7-xsl \
    php7-zip \
    php7-zlib \
    php7-dom \
    php7-redis \
    php7-fpm \
    php7-tidy \
    php7-tokenizer \
    bash \
    openssh \
    curl \
    wget \
    git \
    rsync \
    sshpass \
    python \
    g++ \
    make \
    gifsicle \
    libpng-dev \
    optipng \
    && npm install nodemon -g \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION} \
    && composer selfupdate \
    && curl -LO https://deployer.org/deployer.phar \
    && mv deployer.phar /usr/local/bin/dep \
    && chmod +x /usr/local/bin/dep \
    && rm -rf /var/cache/* /tmp/*
