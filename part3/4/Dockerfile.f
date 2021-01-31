FROM node:10-alpine

WORKDIR /www-html
COPY --chown=node:node package.json package-lock.json /www-html

ARG API_URL
ENV API_URL=${API_URL}

COPY . /www-html

RUN npm install && npm run build && chown node:node /www-html

USER node

CMD ["npx", "serve", "-s", "-l", "5000", "dist"]

EXPOSE 5000
