FROM node:16.6.2-alpine3.11 as build
LABEL version="1.0"

WORKDIR /app

COPY ["package.json", "package-lock.json", "./"]

RUN npm install --production

COPY . .

EXPOSE 8000

CMD ["npm", "start"]