# Dockerfile para servidor Node.js de prueba
FROM node:18-alpine
WORKDIR /app
COPY server.js .
CMD ["node", "server.js"]
