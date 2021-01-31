#!/bin/bash
#minikube start --driver=docker
eval $(minikube docker-env)
docker build -t nginx-image ./srcs/nginx/
kubectl apply -f srcs/nginx/nginx-config.yaml
#minikube delete
