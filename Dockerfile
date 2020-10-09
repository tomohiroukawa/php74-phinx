FROM php:7.4-cli-alpine

MAINTAINER Tomohiro Ukawa

WORKDIR /app

# install pdo_mysql and composer
RUN docker-php-ext-install pdo_mysql && \
    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer && \
    chmod 755 /usr/local/bin/composer && \
    composer global require robmorgan/phinx

ENTRYPOINT ["/root/.composer/vendor/bin/phinx"]
