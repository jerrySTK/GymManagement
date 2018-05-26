FROM ruby:2.4.4
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN gem install rails && gem update --system
RUN mkdir /gymapp
WORKDIR /gymapp
COPY Gemfile /gymapp/Gemfile
COPY Gemfile.lock /gymapp/Gemfile.lock
COPY package.json /gymapp
COPY package-lock.json /gymapp
RUN cd /gymapp
RUN bundle install
