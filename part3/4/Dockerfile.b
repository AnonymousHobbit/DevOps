FROM node:10-alpine

WORKDIR /www-html

COPY --chown=node:node package.json package-lock.json /www-html

ENV FRONT_URL http://localhost:5000

COPY . /www-html

RUN npm install && mkdir -p /www-html/node_modules/.cache && chown node:node /www-html/node_modules/.cache && chown node:node /www-html

USER node

CMD ["npm", "start"]
EXPOSE 8000
