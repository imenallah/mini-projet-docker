# 1. Image de base avec une version explicite
FROM python:3.12-slim

# 2. Définir le répertoire de travail
WORKDIR /app

# 3. Copier uniquement les dépendances
COPY requirements.txt .

# 4. Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copier le code de l'application
COPY app/ ./app/

# 6. Indiquer le port utilisé
EXPOSE 5000

# 7. Commande de démarrage
CMD ["python", "app/app.py"]
