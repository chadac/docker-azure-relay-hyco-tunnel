FROM node:8.16.1-alpine

ADD ./app /app

WORKDIR /app

RUN npm install

CMD [ "/bin/sh", "-c", "/usr/local/bin/node server.js $RELAY_NAMESPACE $HYCO_NAME $HYCO_KEY_NAME $HYCO_KEY_VALUE $USERNAME $PASSWORD" ]
