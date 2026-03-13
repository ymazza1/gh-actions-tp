# Le modèle du camion : un camion léger Node.js 18 (Alpine = version allégée)
FROM node:18-alpine

# L'espace de travail à l'intérieur du camion : la cuisine
WORKDIR /app

# On charge les fiches de recettes dans le camion avant de partir
COPY package.json .

# On fait les courses : on achète tous les ingrédients listés dans les recettes
RUN npm install --omit=dev

# On charge le reste du matériel (le code) une fois les ingrédients prêts
COPY . /app

# On ouvre le guichet de commande sur le port 3000
EXPOSE 3000

# On lève le rideau : le food truck est ouvert et prêt à servir
CMD ["npm", "start"]