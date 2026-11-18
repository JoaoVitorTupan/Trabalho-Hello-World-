# Imagem base oficial do Node.js (versão leve alpine)
FROM node:20-alpine

# Define o diretório de trabalho no container
WORKDIR /app

# Copia os arquivos de manifesto de dependências
COPY package*.json ./

# Instala as dependências de produção
RUN npm install --omit=dev

# Copia todos os arquivos do projeto para o container
COPY . .

# Comando padrão executado ao iniciar o container
CMD ["npm", "start"]
