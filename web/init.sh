#!/bin/bash

cd /var/www

# UPDATE .env FILE.
if [[ -f ".env" ]]; then
    if [[ ! -z "${MYSQL_USER}" ]] && [[ ! -z "${MYSQL_PASSWORD}" ]] && [[ ! -z "${MYSQL_DATABASE}" ]]; then
        sed -i -e "s/DB_USERNAME=.*/DB_USERNAME=${MYSQL_USER}/" .env
        sed -i -e "s/DB_PASSWORD=.*/DB_PASSWORD=${MYSQL_PASSWORD}/" .env
        sed -i -e "s/DB_DATABASE=.*/DB_DATABASE=${MYSQL_DATABASE}/" .env
    fi

    if [[ ! -z "${REDIS_HOST}" ]]; then
        sed -i -e "s/REDIS_HOST=.*/REDIS_HOST=${REDIS_HOST}/" .env
    fi
fi

# Run the start file that comes from creativitykills/nginx-php-server
/start.sh
