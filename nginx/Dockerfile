# Use the official NGINX image as the base image
FROM nginx:latest

# Install vim and other necessary packages
RUN apt-get update && apt-get install -y \
    vim \
    curl \
    gnupg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Copy custom NGINX configuration to the container
# You can replace "default.conf" with your custom configuration file
COPY default.conf /etc/nginx/conf.d/default.conf

# Set up the working directory
WORKDIR /var/www/html

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
