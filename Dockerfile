FROM node:14 

WORKDIR /app

COPY package.json /app 

RUN npm i 

RUN npm install react-scripts@3.4.1 -g --silent

ARG BACK_URL

ENV SERVER_URL $BACK_URL

COPY . /app

EXPOSE 3000

CMD ["npm","start"]
