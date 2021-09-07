FROM node:alpine

RUN npm i npm@latest -g

WORKDIR /app
ADD . .
RUN npm install