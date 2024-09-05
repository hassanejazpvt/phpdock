#!/bin/bash

# Start PHP-FPM
php-fpm &

# Add any other commands you need to run here
# e.g., run migrations, other services, etc.
cd /var/www/html/laravel
composer install -n

# Starting laravel application
php artisan serve --host=0.0.0.0 --port=80