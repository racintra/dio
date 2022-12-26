#!/bin/bash

echo "Criando as imagens..."

docker build -t renatocintra/projeto-backend:1.0 backend/.
docker build -t renatocintra/projeto-database:1.0 database/.

echo "Realizando o push das imagens..."

docker push renatocintra/projeto-backend:1.0
docker push renatocintra/projeto-database:1.0

echo "Criando serviços no cluster kurbernetes..."

kubectl apply -f ./services.yml

echo "Criando os deployments..."

kubectl apply -f ./deployment.yml