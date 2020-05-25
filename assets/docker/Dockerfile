FROM node:latest

ARG diretorio=/usr/src/gateway

RUN mkdir -p $diretorio

WORKDIR $diretorio

COPY . $diretorio

RUN npm run tsc
RUN npm install

CMD node index.js

