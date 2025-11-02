FROM n8nio/n8n:latest

USER root

# Installer les modules custom globalement
RUN npm install -g n8n-nodes-respond.io

# Définir où n8n doit chercher les extensions
ENV N8N_CUSTOM_EXTENSIONS=/usr/local/lib/node_modules

USER node
