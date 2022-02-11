FROM node:14 

WORKDIR /app

COPY package.json /app 

RUN npm i 

RUN npm install react-scripts@3.4.1 -g --silent

COPY . /app

EXPOSE 3000

CMD ["npm","start"]
