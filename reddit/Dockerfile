FROM ruby:2.2

ENV APP_HOME /app
COPY . /app

WORKDIR $APP_HOME
RUN bundle install
ENV DATABASE_URL mongodb://mongo
EXPOSE 9292

CMD ["puma"]
