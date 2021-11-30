FROM node:17-alpine3.12
WORKDIR /app
COPY package*.json ./
COPY . .
RUN mv .env.js.prod .env.js
RUN npm install

EXPOSE 3000

CMD node server.js