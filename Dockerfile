FROM node:latest
LABEL mainteiner="jakubgw"

ENV NODE_ENV=production
ENV PORT=3000

COPY . /server
WORKDIR /server

VOLUME ["server"]

RUN npm install

EXPOSE $PORT

ENTRYPOINT ["npm", "start"]