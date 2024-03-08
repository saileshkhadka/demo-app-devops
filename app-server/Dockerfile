FROM node:20

WORKDIR /app

COPY package*.json ./

RUN npm install --force

RUN npm install -g http-server

COPY . .

CMD ["npm", "start"]

