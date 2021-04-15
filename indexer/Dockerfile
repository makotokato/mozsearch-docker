FROM ubuntu:20.04
MAINTAINER Makoto Kato <m_kato@ga2.so-net.ne.jp>

RUN apt-get update && apt-get install -y sudo wget curl lsb-release gettext-base
RUN adduser --disabled-password --gecos '' builder && adduser builder sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER builder
WORKDIR /home/builder
RUN wget https://raw.githubusercontent.com/mozsearch/mozsearch/master/infrastructure/indexer-provision.sh \
  && bash indexer-provision.sh \
  && rm indexer-provision.sh

# Install SpiderMonkey.
WORKDIR /home/builder
RUN wget https://firefox-ci-tc.services.mozilla.com/api/index/v1/task/gecko.v2.mozilla-central.latest.firefox.linux64-opt/artifacts/public/build/target.jsshell.zip
USER root
WORKDIR /home/builder/js
RUN unzip ../target.jsshell.zip \
  && install js /usr/local/bin \
  && install *.so /usr/local/lib \
  && ldconfig \
  && rm ../target.jsshell.zip

# Clean up
RUN apt-get clean

USER builder
RUN git config --global user.email "unknown@example.com"
RUN git config --global user.name "Unknown"
