FROM node:16-alpine

ENV MONGO_INITDB_ROOT_USERNAME=root \
    MONGO_INITDB_ROOT_PASSWORD=1234

RUN mkdir -p /node-app

COPY ./app /node-app

CMD [ "node", "/node-app/server.js" ]