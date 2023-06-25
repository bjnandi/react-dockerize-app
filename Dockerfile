FROM node:18-alpine

WORKDIR /mywebsite

COPY package.json /mywebsite
COPY package-lock.json /mywebsite

RUN npm install


COPY . /mywebsite



CMD ["npm", "run", "dev"]


EXPOSE 5000