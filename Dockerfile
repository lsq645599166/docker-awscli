FROM python:3.6
MAINTAINER Henry Liu <henry.liu@daocloud.io>

RUN apt-get update && apt-get install \ 
      bash \
      curl \
      less \
      groff \
      jq \
      xz \
      perl-xml-twig \
      tzdata -y && \
      pip install --upgrade pip awscli s3cmd requests && \
      mkdir /root/.aws

COPY get-metadata /usr/local/bin/get-metadata

# Expose data volume
VOLUME /apps
