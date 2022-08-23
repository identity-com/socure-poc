FROM node:16-alpine

WORKDIR /opt/app/

COPY package.json .
COPY yarn.lock .
COPY tsconfig* .
COPY src ./src

RUN yarn --pure-lockfile
RUN yarn build