FROM php:8.1-fpm

RUN apt update \
    && apt install -y zlib1g-dev g++ git libicu-dev zip libzip-dev zip \
    && docker-php-ext-install intl opcache pdo pdo_mysql \
    && pecl install apcu \
    && docker-php-ext-enable apcu \
    && docker-php-ext-configure zip \
    && docker-php-ext-install zip

WORKDIR /var/www/symfony_docker

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN curl -sS https://get.symfony.com/cli/installer | bash
RUN mv /root/.symfony5/bin/symfony /usr/local/bin/symfony

RUN git config --global user.email "joao.viana.it@gmail.com"  \
    && git config --global user.name "joao viana"

#CMD bash -c "composer install && symfony console --no-interaction doctrine:migrations:migrate"

#ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]

#composer install
#symfony console --no-interaction doctrine:migrations:migrate

#apt install npm
#composer require symfony/webpack-encore-bundle
#npm install
#npm install -D tailwindcss postcss autoprefixer postcss-loader
#npx tailwindcss init -p