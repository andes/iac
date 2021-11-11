FROM node:14-alpine

WORKDIR /app

COPY app.js /app/
COPY src /app/src
COPY package.json /app

RUN npm install

CMD node app.js
