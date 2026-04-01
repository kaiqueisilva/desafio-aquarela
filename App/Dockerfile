# -------- STAGE 1: BUILD --------
FROM node:20-alpine AS builder

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

# RUN npm run build


# -------- STAGE 2: RUNTIME --------
FROM node:20-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install --omit=dev

COPY --from=builder /app ./

EXPOSE 3000

ENV ELASTIC_APM_SERVICE_NAME=node-app
ENV ELASTIC_APM_SERVER_URL=http://apm-server:8200

# Comando de inicialização
CMD ["node", "app.js"]