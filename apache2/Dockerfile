# Use an official Ubuntu base image
FROM ubuntu:latest

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Install Apache2, vim, and other necessary packages
RUN apt-get update && apt-get install -y \
    apache2 \
    vim \
    curl \
    gnupg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Enable Apache2 mods
RUN a2enmod rewrite
RUN a2enmod proxy proxy_fcgi

# Copy custom Apache config
COPY default.conf /etc/apache2/sites-available/000-default.conf

# Set up the working directory
WORKDIR /var/www/html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Apache in the foreground (so Docker doesn’t exit the container)
CMD ["apachectl", "-D", "FOREGROUND"]
