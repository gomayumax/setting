#!bin/sh
chmod -R 777  $(pwd)/storage
chmod -R 777  $(pwd)/bootstrap/cache
composer install
