FROM elixir:1.12.2

ENV HOME /install
RUN mkdir $HOME
WORKDIR $HOME

RUN apt-get update && \
    apt-get install -y postgresql-client && \
    apt-get install -y inotify-tools && \
    apt-get install -y nodejs && \
    curl -L https://npmjs.org/install.sh | sh

