FROM node:12-alpine
COPY package.json /app/package.json
COPY app.js /app/app.js

RUN cd /app && npm install

WORKDIR /app

CMD ["node",  "app.js"]

EXPOSE 3000
