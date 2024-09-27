#/bin/bash

minikube start
kubectl config set-context --current --namespace=dev
kubectl apply -f deployers/
kubectl apply -f services/
kubectl apply -f CronJob.yaml
kubectl apply -f configmaps/
kubectl apply -f secrets/
kubectl apply -f statefulset/
minikube dashboard