FROM ruby:2.3.3
ENV APP_HOME /ben.behar.cloud
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
ADD Gemfile* $APP_HOME/
RUN bundle install
ADD . $APP_HOME