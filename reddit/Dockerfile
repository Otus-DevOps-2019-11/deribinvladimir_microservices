FROM ruby:2.4.2

RUN apt-get update && apt-get install -y mongodb-server build-essential

ENV APP_HOME /app
COPY . /app
COPY mongod.conf /etc/mongod.conf
COPY start.sh /start.sh

WORKDIR $APP_HOME
RUN bundle install
ENV DATABASE_URL 127.0.0.1
EXPOSE 9292
RUN chmod 0777 /start.sh

CMD ["/start.sh"]

#CMD ["puma"]
