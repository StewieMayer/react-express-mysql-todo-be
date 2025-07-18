# Dockerfile

FROM node:20-alpine

# Crear directorio de trabajo
WORKDIR /app

# Copiar package.json & package-lock
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto del codigo
COPY . .

# Compilar Typescript
RUN npm run build

# Exponer el puerto 3000
EXPOSE 3000

# Comando de inicio
CMD ["npm", "run", "start"]