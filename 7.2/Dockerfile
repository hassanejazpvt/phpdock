# Use the official PHP 7.2-FPM image as the base image
FROM php:7.2-fpm

# Install system dependencies and PHP extensions
RUN apt-get update && apt-get install -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libwebp-dev \
    libxpm-dev \
    libxml2-dev \
    libmcrypt-dev \
    libonig-dev \
    libzip-dev \
    libonig-dev \
    libmcrypt-dev \
    zip \
    unzip \
    git \
    vim \
    curl \
    gnupg \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ --with-webp-dir=/usr/include/ --with-xpm-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install mysqli pdo pdo_mysql mbstring zip opcache intl bcmath xml \
    && pecl install mcrypt-1.0.1 \
    && docker-php-ext-enable mcrypt

# Copy configuration files
COPY www.conf /usr/local/etc/php-fpm.d/www.conf
COPY php.ini /usr/local/etc/php/php.ini

# Install Composer globally
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install NVM (Node Version Manager)
ENV NVM_DIR /root/.nvm
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash \
    && . "$NVM_DIR/nvm.sh" \
    && nvm install --lts \
    && nvm alias default lts/* \
    && nvm use default

# Add NVM and Node to the PATH
ENV NODE_VERSION lts/*
ENV PATH $NVM_DIR/versions/node/$NODE_VERSION/bin:$PATH

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /var/www/html

# Expose port 9000 and start PHP-FPM
EXPOSE 9000
CMD ["php-fpm"]