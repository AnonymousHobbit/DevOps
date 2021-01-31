FROM node:10-alpine as build-stage

WORKDIR /usr/app
COPY package.json package-lock.json /usr/app/

ARG API_URL
ENV API_URL=${API_URL}

COPY . /usr/app
RUN npm install && npm run build

CMD ["npx", "serve", "-s", "-l", "5000", "dist"]

EXPOSE 5000

FROM nginx
COPY --from=build-stage /usr/app/dist/ /usr/share/nginx/html
