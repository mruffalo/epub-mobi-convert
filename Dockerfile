FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get -y install \
    calibre \
 && rm -rf /var/cache/apt/*

COPY rev.json /opt
