FROM ubuntu:14.04
MAINTAINER aaron@kickstarter.com

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y \
  git \
  ruby-dev

RUN mkdir /app
WORKDIR /app
RUN git clone https://github.com/ktheory/hd6_app.git

CMD ruby app.rb

