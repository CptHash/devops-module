FROM node:12-alpine

WORKDIR /usr/src/app

COPY package.json yarn.lock ./

RUN yarn install

EXPOSE 3000

COPY . .

CMD [ "yarn", "start" ]
