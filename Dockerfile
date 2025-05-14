# Utilisation de l'image officielle Python comme base
FROM python:3.11.9-slim

# Définition du répertoire de travail
WORKDIR /app

# Copie des fichiers de configuration
COPY requirements.txt .

# Installation des dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Copie de tous les fichiers de l'application
COPY . .

# Exposition du port
EXPOSE 5000

# Commande de lancement
CMD ["python", "app.py"]