#!/bin/bash

# Verifica se o script está sendo executado com privilégios de root
if [ "$EUID" -ne 0 ]; then
    echo "Por favor, execute como root ou utilize sudo."
    exit 1
fi

# Define os hosts a serem adicionados ao arquivo /etc/hosts
hosts_to_add=(
    "127.0.0.1 phpmyadmin.local"
    "127.0.0.1 wordpress.local"
)

# Adiciona os hosts ao arquivo /etc/hosts
for host in "${hosts_to_add[@]}"; do
    if ! grep -qF "$host" /etc/hosts; then
        echo "$host" >> /etc/hosts
        echo "Host $host adicionado ao arquivo /etc/hosts."
    else
        echo "Host $host já está presente no arquivo /etc/hosts."
    fi
done

echo "Configuração concluída."
