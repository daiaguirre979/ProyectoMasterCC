## Vagrant - Orquestación

La herramienta utilizada nos permite trabajar con entornos virtuales, como lo es vagrant la misma que nos proporciona un cliente de línea de comandos simple y fácil de usar para administrar estos entornos, y un intérprete para las definiciones basadas en texto, llamado Vagrantfiles. Es de código abierto

Vagrant facilita la creación de un entorno local que imita el entorno en el que finalmente se implementará su código.

### Pasos a seguir para su instalación.

1. Instalar vagrant. Descargar el archivo [aqui](https://www.vagrantup.com/downloads.html)
>
>> dpkg -i vagrant_2.0.1_x86_64.deb 

2. Descargar sistema operativo a utilizar.
>
>>  vagrant box add azure https://github.com/azure/vagrant-azure/raw/v2.0/dummy.box --provider azure
>>

3. Creamos nuestra mv y su repositorio 
>
>>    mkdir vagrant-ubuntu
>>    cd vagrant-ubuntu
>>

4. Instalamos Azure CLI. Pasos [aqui](https://github.com/daiaguirre979/ProyectoMasterCC/tree/master/automatizacion)

5. Login en azure 
>
>> az login

6. Creamos una cuenta en azure active directory con acceso azure resource manager 
>
>> az ad sp create-for-rbac

Nos devuelve la siguiente informacion
>
>> {
>>  "appId": "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX",
>>  "displayName": "some-display-name",
>>  "name": "http://azure-cli-2017-04-03-15-30-52",
>>  "password": "XXXXXXXXXXXXXXXXXXXX",
>>  "tenant": "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"
>> }

7. Creamos el archivo de configuración y lo modificamos segun uestras preferencias.
>
>>   vagrant init
>>   Archivo de configuración: Vagrantfile

8. Instalamos plugin de vagrant-azure
>
>> vagrant plugin install vagrant-azure

9. Iniciamos la mv

>
>>  vagrant up --provider=azure
>>

![Con titulo](https://raw.githubusercontent.com/daiaguirre979/CC-Master/master/1-orq.png "orquestacion")

![Con titulo](https://raw.githubusercontent.com/daiaguirre979/CC-Master/master/1-orq.png "orquestacion")

