FROM ubuntu:20.04
MAINTAINER Makoto Kato <m_kato@ga2.so-net.ne.jp>

RUN apt-get update \
  && apt-get install -y sudo wget software-properties-common curl gettext python-is-python2
WORKDIR /root
RUN wget https://raw.githubusercontent.com/mozsearch/mozsearch/master/infrastructure/web-server-provision.sh \
  && bash web-server-provision.sh \
  && rm web-server-provision.sh

# Clean up
RUN apt-get clean

COPY entrypoint.sh /root
RUN chmod +x /root/entrypoint.sh
