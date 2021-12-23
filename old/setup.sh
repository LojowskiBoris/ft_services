#!/bin/bash
minikube start --disk-size=10g --driver=docker
eval $(minikube docker-env)

kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
kubectl apply -f srcs/metallb/metallb-config.yaml

docker build -t nginx-image ./srcs/nginx/
kubectl apply -f srcs/nginx/nginx-config.yaml

#docker build -t wordpress-image ./srcs/wordpress/
#kubectl apply -f srcs/wordpress/wordpress-secret.yaml
#kubectl apply -f srcs/wordpress/wordpress-config.yaml
