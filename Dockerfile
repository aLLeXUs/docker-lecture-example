FROM node:16-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install
COPY src ./src
COPY tsconfig.json ./
RUN npm run build

CMD ["npm", "run", "serve"]