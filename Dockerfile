FROM node:13-stretch

WORKDIR /app

COPY package.json yarn.lock ./
RUN yarn install

CMD ["yarn", "serve"]
