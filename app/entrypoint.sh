#!/bin/sh

apt install -y
composer install
symfony console --no-interaction doctrine:migrations:migrate
apt install npm -y
npm install -D tailwindcss postcss autoprefixer postcss-loader