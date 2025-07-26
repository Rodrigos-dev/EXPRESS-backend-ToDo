# Etapa 1: Usar imagem oficial do Node.js
FROM node:18-alpine

# Etapa 2: Definir diretório de trabalho dentro do contêiner
WORKDIR /app

# Etapa 3: Copiar arquivos de dependência
COPY package*.json ./

# Etapa 4: Instalar dependências
RUN npm install

# Etapa 5: Copiar restante da aplicação
COPY . .

# Etapa 6: Expor a porta que o app usará
EXPOSE 3333

# Etapa 7: Comando padrão para iniciar o app
CMD ["node", "start"]
#CMD npm start