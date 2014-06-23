FROM ubuntu:14.04
MAINTAINER aaron@kickstarter.com

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y \
  git \
  ruby-dev

RUN gem install bundler --no-ri --no-rdoc

RUN git clone https://github.com/ktheory/hd6_app.git /app
WORKDIR /app
RUN bundle install
EXPOSE 4567
CMD ["ruby", "app.rb"]
