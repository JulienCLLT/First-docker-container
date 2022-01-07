# utilse l'image source node (alpine os linux très leger)
FROM node:alpine

# 
WORKDIR /usr/src/app

# copy dans le futur container les document commencant par package a l'adresse ./
COPY package*.json ./

# on install les dependances et on nettoie le cache pour un container léger et propre
RUN npm install && npm cache clean --force

# on copie tout ce qui se trouve dans le repertoire source (.) dans le workdir (.)
    # pour ne pas avoir 2 fichiers node_modules (un copié et un crée lors du container) on utiliser .dockerignore
COPY . .

# tout les ports par defaut du container son fermé on expose le port 3500 qui correspond au port de KOA
EXPOSE 3500

# execute la commande node avec l'options app.js = node app.js
CMD ["node", "app.js"]