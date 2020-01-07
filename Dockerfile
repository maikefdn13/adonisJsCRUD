FROM node:10

LABEL maintainer="Maike Rodrigues <maikefdn13@gmail.com>"

ENV HOME=/usr/app

USER root
WORKDIR $HOME

COPY package*.json $HOME/

RUN npm i -g @adonisjs/cli
RUN npm install
