#!/bin/bash
sudo docker swarm init --advertise-addr=192.168.100.10:2377
sudo docker swarm join-token worker | grep docker > /vagrant/worker.sh
sudo docker network create -d overlay cintra
sudo docker service create --name cintra --network cintra -p 8000:8000 renatocintra/docker-cluster-vagrant:1.0.0