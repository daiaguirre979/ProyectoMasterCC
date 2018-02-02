# Hito6 - Docker Compose.

Con el fin de hacer funcionar nuestra API - REST, la cual he desarrollado en el hito5 con Flask adiccionándole una base de datos PostreSQL, vamos a necesitar utilizar múltiples servicios (base de datos y servicio web); el  mecanismo que nos permite utilizar varias imágenes y que estas puedan comunicarse entre ellas es Docker Compose. Analizando las diferentes imágenes disponibles he optado por Alpine por la seguridad que ofrece y por su tamaño reducido en comparación a otras distribuciones para más información en el siguiente [enlace](https://www.redeszone.net/2017/12/05/disponible-alpine-linux-3-7/). 

## Pasos para el despliegue en azure

1. Instalar CLI de Azure, pasos [aqui](https://github.com/daiaguirre979/ProyectoMasterCC/tree/master/automatizacion) 

2. Crear un grupo de recursos
>
>> az group create --name myhitoDai --location eastus

3. Implementar una VM de Docker para azure, nos solcitará ingresar cierta información
>
>> az group deployment create --resource-group myhitoDai --template-uri https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/docker-simple-on-ubuntu/azuredeploy.json

![Con titulo](https://github.com/daiaguirre979/CC-Master/blob/master/ima1.png "Compo")


4. Conectarnos por medio de SSH al nuevo host Docker.
>
>> ssh dayanna@daihito6.eastus.cloudapp.azure.com

5. Comprobamos que esté instalado docker-compose, de lo contrario procedemos a su instalación
>
>> docker-compose --version
>> sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

6. En el directorio donde se encuentra el archivo YAML, ejecutamos en comando para iniciar los contendores
>
>> docker-compose up -d

![Con titulo](https://github.com/daiaguirre979/CC-Master/blob/master/ima2.png "Compo")

![Con titulo](https://github.com/daiaguirre979/CC-Master/blob/master/ima3.png "Compo")

![Con titulo](https://github.com/daiaguirre979/CC-Master/blob/master/ima4.png "Compo")


