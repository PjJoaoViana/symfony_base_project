#!/bin/sh

docker exec php apt install -y
docker exec php apt install npm
docker exec php composer install
docker exec php symfony console --no-interaction doctrine:migrations:migrate
docker exec php apt install npm -y
#docker exec php curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
#docker exec php nvm install --latest-npm