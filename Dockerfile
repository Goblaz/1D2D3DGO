FROM node:8.12-alpine

COPY Cesium-1.50/ .

RUN npm install

RUN npm audit fix

EXPOSE 8080

CMD node ./server.js