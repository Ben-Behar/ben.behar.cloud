FROM ruby:2.3.3
WORKDIR /home/
COPY Gemfile /home/
RUN bundle
ADD . /home/
CMD ["bundle", "exec", "rails" , "s", "-b0.0.0.0"]
