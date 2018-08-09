# Docker Laravel Starter

This is a lightweight development environment via Docker for Laravel applications. This is intended to be a first step when starting a new app/build and only requires image packages that are absolutely necessary to run a fresh or basic Laravel project.

Before running, be sure to install Docker and Docker compose https://docs.Docker.com/compose/install/.

# Running Locally

Asumming you have access to Docker and Docker-compose commands in your local machine, do the following:

1. Clone this repo to your machine ```git clone https://github.com/bbleds/laravel-base.git```
2. Go into the newly created directory ```cd laravel-base```
3. Install composer dependencies (this will be updated, but at the time of this writing we need to install locally) ```composer install```
4. Set up your environment file ```cp .env.example .env```
5. Generate an application key ```php artisan key:generate```
6. Build your Docker image ```docker-compose build```
7. Spin up container ```docker-compose up```
8. Good to go! View app locally by visiting localhost:8000 in your browser.