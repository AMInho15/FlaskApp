# Utiliser une image Python officielle comme base
FROM python:3.10

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers du projet dans le conteneur
COPY . .

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port 5000 pour Flask
EXPOSE 5000

# Définir la commande pour exécuter l'application Flask
CMD ["python", "app.py"]
