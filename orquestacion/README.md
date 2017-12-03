## Vagrant - Orquestación

La herramienta utilizada nos permite trabajar con entornos virtuales, como lo es vagrant la misma que nos proporciona un cliente de línea de comandos simple y fácil de usar para administrar estos entornos, y un intérprete para las definiciones basadas en texto, llamado Vagrantfiles. Es de código abierto

Vagrant facilita la creación de un entorno local que imita el entorno en el que finalmente se implementará su código.

### Pasos a seguir para su instalación.

1. Instalar vagrant
* sudo apt-get -y install vagrant

2. Descargar sistema operativo a utilizar.

>
>>   * vagrant box add ubuntu/trusty64 https://vagrantcloud.com/ubuntu/boxes/trusty64
>>

3. Creamos nuestra mv y su repositorio 

>
>>   * mkdir vagrant-ubuntu
>>   * cd vagrant-ubuntu
>>

4. Creamos el archivo de configuración y lo modificamos segun uestras preferencias.

>
>>  * vagrant init
>>  * Archivo de configuración: Vagrantfile

5. Iniciamos la mv

>
>>  * vagrant up
>>

![Con titulo](https://raw.githubusercontent.com/daiaguirre979/CC-Master/master/orquestacion.png "orquestacion")

![Con titulo](https://raw.githubusercontent.com/daiaguirre979/CC-Master/master/orquestacion1.png "orquestacion")

