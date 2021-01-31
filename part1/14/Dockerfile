FROM ruby:2.6.0-alpine

COPY ./ruby-example/Gemfile ./ruby-example/Gemfile.lock ./

COPY ./ruby-example .

RUN apk add build-base nodejs sqlite-dev tzdata && bundle install && rails db:migrate
CMD ["rails","s"]

EXPOSE 3000
