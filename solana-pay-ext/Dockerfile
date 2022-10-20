FROM node:16-alpine

WORKDIR /opt/app/

COPY package.json .
COPY tsconfig* .
COPY src ./src

ENV PORT=80
EXPOSE 80

RUN yarn --pure-lockfile
RUN yarn build

CMD ["node", "dist/index.js"]
