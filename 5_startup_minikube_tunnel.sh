
# Apresenta as URL's de acesso ao Phpmyadmin e Wordpress
echo "O Phpmyadmin pode ser acessado através da url http://phpmyadmin.local"
echo "O Wordpress pode ser acessado através da url http://wordpress.local"

echo 

# Apresenta uma segunda opção de acesso ao Phpmyadmin e Wordpress
echo "Ou ambos os serviços podem ser acessados através da execução dos seguintes comandos:"
echo "minikube service phpmyadmin-service"
echo "minikube service wordpress-service"

echo

# Inicializa o tunnel
echo "Iniciando o tunnel..."
minikube tunnel
