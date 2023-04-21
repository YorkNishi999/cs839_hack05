FROM node:18-alpine3.16
WORKDIR /usr/src/app

RUN npm install -g create-react-app
RUN npm install --save react-router-dom
RUN npm install --save prop-types

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
