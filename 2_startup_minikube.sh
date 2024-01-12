#!/bin/bash

# Verifica se o Minikube está em execução
minikube_status=$(minikube status | grep "minikube" | awk '{print $2}')

if [ "$minikube_status" != "Running" ]; then
    echo "Iniciando o Minikube..."
    minikube start
fi

echo

# Inicializa os addons necessários
echo "Iniciando os addons necessários..."
minikube addons enable ingress
