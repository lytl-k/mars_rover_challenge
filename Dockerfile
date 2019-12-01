FROM ruby:2.6-alpine
MAINTAINER Kobus Kemp <kobuskkemp@gmail.com>

ENV BUILD_PACKAGES bash curl-dev ruby-dev build-base
ENV RUBY_PACKAGES ruby ruby-io-console ruby-bundler

# Update and install all of the required packages.
# At the end, remove the apk cache
RUN apk update && \
    apk upgrade && \
    apk add $BUILD_PACKAGES && \
    apk add $RUBY_PACKAGES && \
    rm -rf /var/cache/apk/*

RUN mkdir -p /challenge/rover_stuff
WORKDIR /challenge/rover_stuff

COPY Gemfile /challenge/rover_stuff/
COPY Gemfile.lock /challenge/rover_stuff/
RUN gem install bundler
RUN bundle install

COPY . /challenge/rover_stuff
