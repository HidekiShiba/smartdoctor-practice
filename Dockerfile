FROM ruby:2.6.3
RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y libpq-dev
RUN apt-get install -y nodejs
RUN apt-get install -y postgresql-client
RUN apt-get install -y yarn

WORKDIR /smart_doctor
COPY Gemfile Gemfile.lock /smart_doctor/
RUN bundle install
