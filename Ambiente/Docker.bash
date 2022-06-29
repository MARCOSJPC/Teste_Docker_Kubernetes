#Instalando dependencias do Docker:
 $ sudo apt-get update
 $ sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
 $ sudo mkdir -p /etc/apt/keyrings
 $ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
 $ echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

#Instalando Docker:
 $ sudo apt-get update
 $ sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
  
#Adicionando o usuario ao grupo do docker:
 $ sudo usermod -aG docker $USER

#Criando diretorio da aplicação, o arquivo da aplicação e o arquivo Dockerfile
$ mkdir teste-variavel
$ cd teste-variavel/
$ touch index.js
$ touch Dockerfile

###Entrando no arquivo 'index.js' para edição
$ vi index.js
#adicionando as informações no editor de texto. Para salvar e sair só precionar "ESC", ":", "wq!" ou "x!"
var Intervalo20 = setInterval(function(){
    console.log(process.env.TWORPTEST);
}, 20000);


###Entrando e editando o arquivo Dockerfile
$ vi Dockerfile
#adicionando as informações no editor de texto.
FROM node:14
WORKDIR /app-node
COPY . .
RUN npm install
ENTRYPOINT node index.js


#Construindo a imagem
$ docker build -t marcos/app-node:1.0 .
#Após a criação deve-se upar a imagem no dockerhub mas é necessário ter uma conta no docker hub para isso
#fazendo login no docker hub pelo terminal
$ docker login -u dockerdoshock
#mudando a tag da imagem criada para não ocorrer erro de permissão na hora de upar ela no dockerhub
$ docker tag marcos/app-node:1.0 dockerdoshock/app-node:1.0
#Upando a imagem no dockerhub
docker push dockershock/app-node:1.0



















  
  
