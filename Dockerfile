FROM alpine:latest

WORKDIR /app

COPY . .

EXPOSE 5001

RUN apk update && apk add nodejs npm
RUN npm install

ENTRYPOINT ["npm", "run"]

CMD ["start"]