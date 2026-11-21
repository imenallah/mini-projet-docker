\# Mini-projet Docker – Application Flask



\## 1. Description



Ce projet consiste à conteneuriser une application web développée avec Flask en utilisant Docker.



L'application affiche un message personnalisable grâce à une variable d'environnement et fonctionne sur le port 5000.



\## 2. Technologies utilisées



\- Python 3.12

\- Flask 3.1.1

\- Docker

\- Docker Hub



\## 3. Image Docker Hub



L'image est publiée sur Docker Hub :



\*\*Repository :\*\* `imenallah/mini-projet-docker`



Versions disponibles :

\- `1.0.0`

\- `1.0.1`



\## 4. Télécharger l'image



Si le repository est privé, connectez-vous d'abord à Docker Hub :



```bash

docker login

```



Téléchargez ensuite l'image :



```bash

docker pull imenallah/mini-projet-docker:1.0.1

```



\## 5. Lancer l'application



```bash

docker run -d \\

&#x20; --name flask-app \\

&#x20; -p 8080:5000 \\

&#x20; -e "APP\_MESSAGE=Bienvenue dans mon projet Docker !" \\

&#x20; --memory 256m \\

&#x20; --cpus 0.5 \\

&#x20; imenallah/mini-projet-docker:1.0.1

```



Sous Windows PowerShell, la commande peut aussi être exécutée sur une seule ligne.



\## 6. Accéder à l'application



Ouvrir le navigateur à l'adresse :



`http://localhost:8080`



\## 7. Vérifier le conteneur



```bash

docker ps

docker logs flask-app

```



\## 8. Arrêter et supprimer le conteneur



```bash

docker stop flask-app

docker rm flask-app

```



\## 9. Configuration



La variable d'environnement `APP\_MESSAGE` permet de personnaliser le message affiché par l'application.



Si aucune valeur n'est fournie, un message par défaut est utilisé.

