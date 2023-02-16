FROM ruby:3.2.1

RUN apt update && \
  apt install -y postgresql-client

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN gem install bundler

RUN bundle install

COPY . .