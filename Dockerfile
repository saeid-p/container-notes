# Pull the latest version of node LTS
FROM node:lts-slim
LABEL maintainer="hello@saeid.info"

ARG NODE_ENV
ENV NODE_ENV $NODE_ENV

ARG ENV
ENV ENV $ENV

COPY . /src
WORKDIR /src

RUN npm install

EXPOSE 8080
# CMD yarn start --production
ENTRYPOINT [ "node", "./app.js" ]