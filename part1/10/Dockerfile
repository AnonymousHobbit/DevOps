FROM node:10-alpine

COPY package.json package-lock.json ./
RUN npm install

ENV API_URL=http://localhost:8000

COPY . .
RUN npm run build

CMD ["npx", "serve", "-s", "-l", "5000", "dist"]

EXPOSE 5000
