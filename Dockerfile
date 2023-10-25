FROM node:14

WORKDIR /uniphone-mvc3
COPY package.json .
RUN npm install
COPY . .
EXPOSE 3000
CMD ["node", "index.js"]