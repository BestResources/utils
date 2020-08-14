#!/bin/bash

# INTALL MINIKUBE
MINIKUBE="$(minikube version  | head -n 1 | awk '{print $3}')"

if [[ $MINIKUBE != 'v1.3.1' ]]; then 
    echo 'Intall Minikube'
    curl -Lo minikube https://storage.googleapis.com/minikube/releases/v1.3.1/minikube-linux-amd64
    chmod +x minikube
    sudo mkdir -p /usr/local/bin/
    sudo install minikube /usr/local/bin/
fi;