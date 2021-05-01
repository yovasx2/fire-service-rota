# syntax=docker/dockerfile:1
FROM ruby:2.7.3

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client npm
RUN npm install -g yarn

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/
RUN bundle install -j4

ADD . $APP_HOME
RUN npm install

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
CMD ["entrypoint.sh"]
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]
