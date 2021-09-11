FROM node:12-alpine

WORKDIR /app

COPY package.json .

RUN yarn install

COPY . .

ENV port=3000

EXPOSE 3000

CMD [ "yarn", "start" ]
