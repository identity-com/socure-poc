FROM node:16-alpine

WORKDIR /opt/app/

COPY package.json .
COPY tsconfig.json .
COPY src ./src
COPY yarn.lock .

ENV PORT=80
EXPOSE 80

RUN yarn install --frozen-lockfile
RUN yarn build

CMD ["node", "dist/index.js"]
