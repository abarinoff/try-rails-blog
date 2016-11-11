FROM ruby:2.3.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

ENV APPLICATION_HOME /app
RUN mkdir $APPLICATION_HOME
WORKDIR $APPLICATION_HOME

COPY Gemfile* $APPLICATION_HOME/

RUN bundle install

COPY . $APPLICATION_HOME/