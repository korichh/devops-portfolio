FROM node:20-alpine

USER node

WORKDIR /home/node/portfolio

COPY package.json ./
RUN npm install

COPY ./ ./

EXPOSE 3000

CMD ["npm", "start"]