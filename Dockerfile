FROM elixir:1.12.2

ENV HOME /install
RUN mkdir $HOME
WORKDIR $HOME

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN apt-get install -y nodejs

RUN apt-get install -y postgresql-client inotify-tools apt-utils

RUN curl -L https://npmjs.org/install.sh | sh

