FROM node:16-alpine

WORKDIR /usr/src/app

COPY package.json yarn.lock ./

RUN yarn install

COPY . .

EXPOSE 8080

RUN yarn build

CMD [ "node", "./dist/index.js" ]