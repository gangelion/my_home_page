FROM ruby:2.5.1
RUN apt-get update -qq && apt-get install apt-transport-https && apt-get install -y nodejs mysql-client
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash && apt-get install -y npm
RUN mkdir /my_home_page
WORKDIR /my_home_page
COPY Gemfile /my_home_page/Gemfile
COPY Gemfile.lock /my_home_page/Gemfile.lock
ENV BUNDLER_VERSION 2.1.2
RUN gem install bundler:2.1.2
RUN bundle install
COPY . /my_home_page

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]