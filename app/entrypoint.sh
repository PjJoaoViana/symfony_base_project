#!/bin/sh
until [ "`/usr/bin/docker inspect -f {{.State.Running}} nginx ==true`"=="true" ]; do
    sleep 0.1;
done;
echo "ok entao"

symfony console doctrine:migrations:migrate --no-interaction --allow-no-migration

#composer install #&&
