FROM n8nio/n8n:latest

USER root
RUN npm install -g @respond-io/n8n-nodes-respondio

# Utiliser un dossier différent de /home/node/.n8n
RUN mkdir -p /data && chown -R node:node /data

ENV N8N_CUSTOM_EXTENSIONS=/usr/local/lib/node_modules
ENV N8N_USER_FOLDER=/data

USER node
