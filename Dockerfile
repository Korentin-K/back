FROM alpine:latest

WORKDIR /app

COPY package*.json .

EXPOSE 5000

RUN apk update && apk add nodejs npm
RUN npm install

CMD["npm","start"]


