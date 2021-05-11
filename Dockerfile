FROM node:14.6

WORKDIR /app

COPY . .
RUN npm i

CMD ["npm", "start"]
