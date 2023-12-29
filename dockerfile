FROM node:16-alpine3.15

ENV NODE_OPTIONS=--unhandled-rejections=none

RUN mkdir /app
WORKDIR /app
ADD . /app

RUN npm install --global serve

EXPOSE 3000

CMD ["serve"]