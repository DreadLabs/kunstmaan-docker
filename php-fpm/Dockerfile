FROM dreadlabs/kmcms-php-base:7.0

MAINTAINER Thomas Juhnke <dev@van-tomas.de>

RUN apt-get -y update && \
    apt-get -y install \
        --no-install-recommends \
        php7.0-fpm && \
    apt-get -y autoremove --purge && \
    rm -rf /var/lib/apt/lists/*

COPY rootfs/ /

WORKDIR /var/www/html

EXPOSE 9000

ENTRYPOINT ["php-fpm7.0"]
CMD []
