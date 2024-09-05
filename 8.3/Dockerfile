# Use the official PHP 8.3-FPM image as the base image
FROM php:8.3-fpm

# Install system dependencies and PHP extensions
RUN apt-get update && apt-get install -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libwebp-dev \
    libxpm-dev \
    libxml2-dev \
    libzip-dev \
    libonig-dev \
    libmcrypt-dev \
    zip \
    unzip \
    git \
    curl \
    gnupg \
    vim \
    && docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp --with-xpm \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install mysqli pdo pdo_mysql mbstring zip opcache intl bcmath xml \
    && pecl install mcrypt-1.0.5 \
    && docker-php-ext-enable mcrypt

# Copy configuration files
COPY www.conf /usr/local/etc/php-fpm.d/www.conf
COPY php.ini /usr/local/etc/php/php.ini
COPY start.sh /usr/local/bin/start.sh
RUN chmod +x /usr/local/bin/start.sh

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
