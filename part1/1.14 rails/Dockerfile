FROM ruby:2.6.0

WORKDIR /app

RUN apt-get update && apt-get install nodejs -y
RUN gem install bundler

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

RUN rails db:migrate

EXPOSE 3000

CMD ["rails", "s"]
