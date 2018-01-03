FROM node:latest
LABEL mainteiner="jakubgw"

ENV NODE_ENV=production

COPY . /server
WORKDIR /server


RUN npm install

EXPOSE 3000

CMD ["npm", "start"]