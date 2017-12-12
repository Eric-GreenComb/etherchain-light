FROM node:8.7.0-onbuild

WORKDIR /usr/src/app

COPY package.json ./
RUN npm install

COPY . .
EXPOSE 3000

CMD [ "npm", "start" ]
