FROM node:14.17
ENV NODE_ENV=development

WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]

RUN npm install
COPY . .
CMD [ "node", "server.js" ]

