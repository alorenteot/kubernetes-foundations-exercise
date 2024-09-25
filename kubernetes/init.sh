#/bin/bash

minikube start
kubectl config set-context --current --namespace=dev
kubectl apply -f deployers/
kubectl apply -f services/
kubectl apply -d CronJob.yaml
minikube dashboard