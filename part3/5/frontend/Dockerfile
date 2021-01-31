FROM node:10-alpine

COPY package.json package-lock.json ./

ARG API_URL
ENV API_URL=${API_URL}

COPY . .
RUN npm install && npm run build

CMD ["npx", "serve", "-s", "-l", "5000", "dist"]

EXPOSE 5000
