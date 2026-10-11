FROM node:22-alpine
WORKDIR /
COPY package*.json ./
RUN npm ci
COPY . .
CMD ["node", "src/server.js"]
