FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y language-pack-ja-base language-pack-ja
ENV LANG=ja_JP.UTF-8
RUN apt-get install -y wget cmake make git g++ bash zip libcurl4-openssl-dev

WORKDIR /usr

WORKDIR /home
