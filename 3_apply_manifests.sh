#!/bin/bash

# Aplica o kubectl apply -f em todos os arquivos dentro de mysql/manifests/
echo "Aplicando manifestos para o MySQL..."
for file in mysql/manifests/*; do
    kubectl apply -f "$file"
done

echo

# Aplica o kubectl apply -f em todos os arquivos dentro de phpmyadmin/manifests/
echo "Aplicando manifestos para o PhpMyAdmin..."
for file in phpmyadmin/manifests/*; do
    kubectl apply -f "$file"
done

echo

# Aplica o kubectl apply -f em todos os arquivos dentro de wordpress/manifests/
echo "Aplicando manifestos para o WordPress..."
for file in wordpress/manifests/*; do
    kubectl apply -f "$file"
done
