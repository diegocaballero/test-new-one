FROM php:7.2-cli
COPY index.php /var/www/html/

RUN pecl install xdebug-2.6.0 \ 
&& docker-php-ext-enable xdebug \
&& docker-php-ext-install pdo pdo_mysql