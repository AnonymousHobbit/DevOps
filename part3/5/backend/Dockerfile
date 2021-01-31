FROM node:10-alpine

COPY package.json package-lock.json ./

ENV FRONT_URL http://localhost:5000

COPY . .

RUN npm install && mkdir -p /app/node_modules/.cache && chown node:node /app/node_modules/.cache && chmod node:node /www-html
USER node

CMD ["npm", "start"]
EXPOSE 8000
