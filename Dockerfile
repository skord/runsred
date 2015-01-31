FROM ruby:2.2.0-onbuild

WORKDIR /usr/src/app

RUN middleman build

EXPOSE 80
