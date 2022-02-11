FROM node:14  as build

WORKDIR /app

COPY package.json /app 

RUN npm i 

ARG BACK_URL

ENV SERVER_URL $BACK_URL

COPY . /app

EXPOSE 3000

CMD ["npm","start"]
