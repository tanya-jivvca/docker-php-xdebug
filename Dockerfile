FROM php:5.6-apache

COPY src/ /var/www/html/

RUN docker-php-source extract \
    && docker-php-ext-install mysqli \
    && docker-php-ext-install pdo_mysql \
    && docker-php-source delete
	
RUN pecl install xdebug &&\
    echo "zend_extension=/usr/local/lib/php/extensions/no-debug-non-zts-20131226/xdebug.so" > /usr/local/etc/php/conf.d/ext-xdebug.ini

COPY config/php.ini /usr/local/etc/php/
