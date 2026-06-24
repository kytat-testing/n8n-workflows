FROM node:22-bullseye

# instalar herramientas
RUN apt-get update && apt-get install -y \
    p7zip-full \
    unzip \
    lftp \
    && rm -rf /var/lib/apt/lists/*

# instalar n8n
RUN npm install -g n8n

# crear carpeta de datos
RUN mkdir -p /home/node/.n8n
WORKDIR /home/node

# exponer puerto
EXPOSE 5678

# correr n8n
CMD ["n8n"]