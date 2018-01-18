## Contenedores 

Una herramienta que nos permite crear contenedores y que vamos a utlizar en este proyecto es Docker, el cual nos permite tener aplcaciones empaquetadas de forma que sean autosifucientes es decir, que dispongan de todas las bibliotecas y las dependencias que necesiten. He elegido esta herramienta ya que es fácil y ligero a la hora de instalar y es compatible con muchos sitemas operativos y sistemas cloud. . 

### Detalle de los pasos a seguir

1. Instalación de Docker

>
>> sudo apt-get update
>
>> sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
>
>> echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" | sudo tee /etc/apt/sources.list.d/docker.list
>
>> apt-cache policy docker-engine
>
>> sudo apt-get install -y docker-engine
>>

2. Verificamos que el daemon este iniciado y configurado

>
>> sudo systemctl status docker

3. Creamos una cuenta en dockerHub enlazando nuestro repositorio de Github.

4. Despliegue de la image docker en azure.

>
>> az webapp deployment user set --user-name daiaguirre --password password
>
>> az group create --name GroupDai2 --location "West Europe"
>
>> az appservice plan create --name AppServicePlan2 --resource-group GroupDai2 --sku S1 --is-linux
>
>> az webapp create --resource-group GroupDai2 --plan AppServicePlan2 --name daicontenedor2 --deployment-container-image-name daiaguirre/proyectomastercc
>> 



![](https://github.com/daiaguirre979/CC-Master/blob/master/docker1.png)

![](https://github.com/daiaguirre979/CC-Master/blob/master/docker2.png)

![](https://github.com/daiaguirre979/CC-Master/blob/master/docker3.png)


