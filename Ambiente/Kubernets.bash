#Iniciando a instalação do kubectl
$ curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

#dando a permissão de executavél dentro do sistema e movendo para o PATH
$ chmod +x kubectl
$ mv ./kubectl ~/.local/bin/kubectl
$ kubectl version --client

#Instalando MiniKube
$ curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
$ sudo install minikube-linux-amd64 /usr/local/bin/minikube
