FROM node:14

WORKDIR /usr/src

COPY nodos_app /usr/src
CMD ["npm", "start"]