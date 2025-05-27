# Utiliza la versión LTS actual de Node.js con Alpine
FROM node:20.9.0-alpine3.18

# Directorio de trabajo
WORKDIR /usr/src/app

# Instalación de dependencias
COPY package*.json ./

# Instala dependencias
RUN npm install

# Copia del código fuente
COPY . .

# Puerto expuesto
EXPOSE 3000

# Comando de inicio
CMD ["npm", "start"]
