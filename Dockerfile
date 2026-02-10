FROM node:18-alpine

WORKDIR /app

COPY package.json ./package.json
COPY server.js ./server.js

ENV PORT=8080
EXPOSE 8080

CMD ["npm", "start"]
