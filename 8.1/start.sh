#!/bin/bash

# Start PHP-FPM
php-fpm &

# Add any other commands you need to run here
# e.g., run migrations, other services, etc.

# Starting PHP built-in server
php -S 0.0.0.0:80