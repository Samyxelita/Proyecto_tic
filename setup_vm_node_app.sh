#!/bin/bash
# Script para instalar y correr servidor Node.js en una VM Linux

# Actualizar e instalar Node.js
sudo apt update
sudo apt install -y nodejs npm

# Crear carpeta de la app
mkdir -p ~/app && cd ~/app

# Crear el archivo server.js
cat <<EOF > server.js
const http = require('http');
const server = http.createServer((req, res) => {
  res.end('Hola desde Node.js\n');
});
server.listen(3000, () => {
  console.log('Servidor escuchando en http://localhost:3000');
});
EOF

# Ejecutar la app
node server.js
