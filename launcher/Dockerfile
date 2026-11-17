# Built from the repo root: docker build -f launcher/Dockerfile .
FROM node:22-alpine
WORKDIR /app
COPY launcher/package.json ./
RUN npm install --omit=dev --no-audit --no-fund
COPY launcher/*.mjs ./
COPY launcher/public ./public
COPY server/docker-compose.yml server/Caddyfile server/.env.example ./server/
ENV NODE_ENV=production
EXPOSE 8080
CMD ["node", "server.mjs"]
