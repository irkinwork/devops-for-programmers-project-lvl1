FROM node:14

WORKDIR /usr/src

COPY . /usr/src
CMD ["npm", "start"]