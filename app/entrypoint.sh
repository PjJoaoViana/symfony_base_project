#!/bin/sh

apt install -y
composer install --prefer-dist --no-scripts --no-autoloader
symfony console --no-interaction doctrine:migrations:migrate
apt install npm -y
npm install -D tailwindcss postcss autoprefixer postcss-loader