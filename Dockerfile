FROM ubuntu

MAINTAINER Lucas Dutra <ldutra98@gmail.com>

RUN apt-get update

RUN apt-get install -y nginx