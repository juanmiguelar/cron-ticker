# /app
FROM node:19.2-alpine3.16

# cd /app
WORKDIR /app

COPY package.json ./

# instalar las dependencias
RUN npm install 

# dest /app
COPY . .

# realizar las pruebas
RUN npm run test

#eliminar los archivos y directorios no necesarios en prod
RUN rm -rf tests && rm -rf node_modules

RUN npm install --prod

# Comando run de la imagen
CMD ["node", "app.js"]




