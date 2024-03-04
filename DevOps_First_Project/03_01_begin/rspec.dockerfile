FROM ruby:3.2-alpine

RUN apk add --no-cache build-base ruby-nokogiri
RUN gem install rspec capybara selenium-webdriver

WORKDIR /app
COPY . .

ENTRYPOINT [ "rspec" ]
