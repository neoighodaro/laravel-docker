#!/bin/bash

cd /var/www

# Create the .env file if missing
if [[ ! -f ".env" ]]; then cp .env.example .env; fi

# Update the MySQL database values in the .env file
sed -i "s/DB_USERNAME=.*/DB_USERNAME=${MYSQL_USER}/"     .env
sed -i "s/DB_PASSWORD=.*/DB_PASSWORD=${MYSQL_PASSWORD}/" .env
sed -i "s/DB_DATABASE=.*/DB_DATABASE=${MYSQL_DATABASE}/" .env

# Run the start file that comes from creativitykills/nginx-php-server
/start.sh