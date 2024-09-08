FROM ruby:3.3
WORKDIR /usr/src/app
RUN apt-get update -yqq
RUN apt-get install -yqq --no-install-recommends nodejs

RUN git config --global user.name "David Winkenwerder"
RUN git config --global user.email "dwinkenwerder@gmail.com"

# throw errors if Gemfile has been modified since Gemfile.lock
# RUN bundle config - global frozen 1
# COPY Gemfile Gemfile.lock ./
# RUN bundle install

# COPY . . 
# CMD ["/your-daemon-or-script.rb"]