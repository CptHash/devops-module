FROM node

ENV NODE_ENV development

WORKDIR /react-app

COPY ./package.json /react-app
RUN yarn install

COPY . .

EXPOSE 3000

CMD yarn start
