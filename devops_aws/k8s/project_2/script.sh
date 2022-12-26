#!/bin/bash

echo "Criando as imagens..."

docker build -t renatocintra/projeto-app:1.0 app/.

echo "Realizando o push das imagens..."

docker push renatocintra/projeto-app:1.0

echo "Criando os deployments..."

kubectl apply -f .\mysql-deployment.yml --record
kubectl apply -f .\app-deployment.yml --record