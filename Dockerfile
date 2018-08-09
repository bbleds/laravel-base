# Use PHP runtime as a parent image 
# - https://github.com/docker-library/php/blob/d6b950cc18b2977a96f472345024bed00cd07814/7.1/stretch/cli/Dockerfile
FROM php:7.1.20

ENV \
  APP_PORT="80"

# Set the working directory to /app within container
WORKDIR /app

# Copy the current directory contents into the container in /app directory
ADD . /app

# Install any needed packages specified in requirements.txt
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer\
    mkdir -p /app/storage/framework/views\
    mkdir -p /app/storage/framework/sessions\
    mkdir -p /app/storage/framework/cache\
    composer install

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Run artisan dev server in container
CMD php artisan serve --host=0.0.0.0 --port=$APP_PORT