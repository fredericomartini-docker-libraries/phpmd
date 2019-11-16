FROM php:7.2.0-cli
MAINTAINER Frederico Martin <fredmalmeida@gmail.com>

RUN apt-get update && apt-get install -y libbz2-dev
RUN docker-php-ext-install bz2

RUN curl -O -L https://github.com/phpmd/phpmd/releases/download/2.7.0/phpmd.phar
RUN mv phpmd.phar /usr/local/bin/phpmd
RUN chmod +x /usr/local/bin/phpmd

RUN mkdir -p /app
WORKDIR /app

ENTRYPOINT ["phpmd"]