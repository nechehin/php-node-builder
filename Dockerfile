FROM node:16-alpine3.16

LABEL maintainer "e.nechehin <e.nechehin@gmail.com>"

WORKDIR /home/node

RUN apk --no-cache add -U \
    php8 \
    php8-dev \
    php8-common \
    php8-apcu \
    php8-bcmath \
    php8-xmlwriter \
    php8-ctype \
    php8-curl \
    php8-exif \
    php8-fileinfo \
    php8-iconv \
    php8-intl \
    php8-json \
    php8-gmp \
    php8-mbstring \
    php8-opcache \
    php8-openssl \
    php8-pcntl \
    php8-mysqlnd \
    php8-pdo \
    php8-pdo_mysql \
    php8-phar \
    php8-posix \
    php8-session \
    php8-xml \
    php8-simplexml \
    php8-xsl \
    php8-zip \
    php8-zlib \
    php8-dom \
    php8-redis \
    php8-fpm \
    php8-tidy \
    php8-tokenizer \
    bash \
    openssh \
    curl \
    wget \
    git \
    rsync \
    sshpass \
    g++ \
    make \
    gifsicle \
    libpng-dev \
    optipng \
    && npm install nodemon -g \
    && php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php \
    && php -r "unlink('composer-setup.php');" \
    && mv composer.phar /usr/local/bin/composer \
    && rm -rf /var/cache/* /tmp/*
