FROM ruby:2.3.3
WORKDIR /app/
COPY Gemfile /app/
# be careful as Gemfile.lock is not added to the docker container until ADD . /app/
RUN bundle install
ADD . /app/
# /app/secret/ must have a master.key added to it to allow the rails server to access the secrets it needs to do stuff
VOLUME /app/secret/

CMD ["bundle", "exec", "rails" , "s", "-b0.0.0.0", "-p3000", "-eproduction"]
