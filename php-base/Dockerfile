FROM debian:8.6

MAINTAINER Thomas Juhnke <dev@van-tomas.de>

COPY rootfs/ /

ENV BUILD_PACKAGES wget

RUN apt-get -y update && \
    apt-get -y install $BUILD_PACKAGES && \
    mv /etc/apt/sources.list.d-prepare/* /etc/apt/sources.list.d/ && \
    wget https://www.dotdeb.org/dotdeb.gpg && \
    apt-key add dotdeb.gpg && \
    rm dotdeb.gpg && \
    apt-get -y clean && \
    apt-get -y update && \
    apt-get -y install \
        php7.0-apcu \
        php7.0-cli \
        php7.0-common \
        php7.0-curl \
        php7.0-gd \
        php7.0-imagick \
        php7.0-intl \
        php7.0-json \
        php7.0-mbstring \
        php7.0-mcrypt \
        php7.0-mysql \
        php7.0-opcache \
        php7.0-readline \
        php7.0-xml \
        php7.0-zip && \
    apt-get purge -y --auto-remove $BUILD_PACKAGES && \
    rm -rf /var/lib/apt/lists/*
