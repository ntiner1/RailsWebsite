FROM ruby:2.5.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /RailsWebsite
WORKDIR /RailsWebsite
COPY Gemfile /RailsWebsite/Gemfile
COPY Gemfile.lock /RailsWebsite/Gemfile.lock
RUN bundle install
COPY . /RailsWebsite
CMD ["rails", "server"]