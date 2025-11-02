FROM n8nio/n8n:latest

USER root

# Installer le module Respond.io
RUN npm install -g @respond-io/n8n-nodes-respondio

# Créer et donner les permissions à node
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

# Indiquer où se trouvent les extensions custom
ENV N8N_CUSTOM_EXTENSIONS=/usr/local/lib/node_modules

# (optionnel) Redéfinir le dossier utilisateur si besoin
# ENV N8N_USER_FOLDER=/data
# RUN mkdir -p /data && chown -R node:node /data

USER node
