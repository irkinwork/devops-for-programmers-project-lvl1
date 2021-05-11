FROM node:14.6

WORKDIR /app

RUN npm i
RUN npm i -g @nodosjs/cli@0.0.55
COPY . .

CMD ["npm", "start"]