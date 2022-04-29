FROM node:lts-alpine

RUN npm install -g http-server

WORKDIR /vue-app

COPY ./package*.json ./

RUN npm install -D
RUN npm install

COPY . .

RUN npm run build

EXPOSE 8080
ENV NODE_ENV=production

CMD [ "npm", "run", "serve"]