FROM ruby:2.2.0-onbuild

WORKDIR /usr/src/app

RUN apt-get update &&\
    apt-get install -y node nginx-full &&\
    middleman build

ADD default /etc/nginx/sites-available/default
ADD nginx.conf /etc/nginx/nginx.conf
