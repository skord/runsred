FROM ruby:2.2.0-onbuild

WORKDIR /usr/src/app

RUN apt-get install -y nodejs &&\
    middleman build
