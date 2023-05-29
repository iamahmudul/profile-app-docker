FROM node:16-alpine

ENV MONGO_INITDB_ROOT_USERNAME=root \
    MONGO_INITDB_ROOT_PASSWORD=1234

RUN mkdir -p /app

COPY ./app /app

CMD [ "node", "/app/server.js" ]