
FROM ruby:2.6.0-alpine

RUN apk add build-base nodejs sqlite-dev tzdata

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY ./ruby-example .

RUN rails db:migrate
CMD ["rails","s"]

EXPOSE 3000
