FROM ubuntu:22.04

RUN apt update -y && apt install -y software-properties-common

RUN add-apt-repository ppa:ondrej/php -y

RUN apt-get update -y && apt-get install nginx php8.3-fpm -y

RUN apt-get update -y && apt-get install php8.3-mongodb php8.3-curl php8.3-dom -y

# RUN apt-get update -y && apt-get install curl git zip unzip -y

# RUN curl https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www/html/laravel-mongo-docker

COPY ./services/