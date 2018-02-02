## ProyectoMasterCC

Se detalla el proyecto a realizar como trabajo para la asignatura de Cloud Computing. El repositorio del proyecto se encuentra en la siguiente URL: https://daiaguirre979.github.io/ProyectoMasterCC/


***


### Descripción del proyecto

Creación de una sitio web donde incluya una rest Api la cual, nos permita el acceso y consumo del servicio vía HTTP, métodos HTTP como GET, POST, PUT y DELETE para productos de una farmacia, la misma que se la desarrollara con Flask y postgresSQL como manejador de base de datos.

### Arquitectura

Arquitectura basada en microservicios, serán desplegados en la nube, en una máquina virtual Ubuntu Server.

### Provisionamiento

Si bien hay muchos sistemas populares de administración de configuraciones disponibles para sistemas Linux, como Chef,Puppet,Ansible; he elegido este último debido a que no requiere la instación de  ningún software adicional en las computadoras del cliente, de esta forma simplifica la administración de servidores. Cualquier servidor que tenga un puerto SSH expuesto puede incluirse en la configuración de Ansible.

## Automatización

Ha sido realizada utilizando el cliente de azure. Se ha configurado una maquina virtual Ubuntu y hemos configurado el provisionamiento antes utilizado. En el siguiente link se detalla como ejecutar el despliegue --> [README](https://github.com/daiaguirre979/ProyectoMasterCC/blob/master/automatizacion/README.md)

La maquina desplegada del hito3.

## Orquestación

Realizada con vagrant en una mv como cliente de azure. Para revisar la configuración pueden revisar en el siguiente [Enlace](https://github.com/daiaguirre979/ProyectoMasterCC/blob/master/orquestacion/README.md)

	Despliegue Vagrant: 52.166.233.137 


## Contenedores
Configurada con Docker. Puede revisar mas detalles en este [Enlace](https://github.com/daiaguirre979/ProyectoMasterCC/blob/master/contenedores/README.md)

Contenedor: http://daicontendor2.azurewebsites.net

Dockerhub: https://hub.docker.com/r/daiaguirre/proyectomastercc/


## Composición de servicios

Con el fin de hacer funcionar nuestra API - REST, la cual he desarrollado en el hito5 con Flask adiccionándole una base de datos PostreSQL, vamos a necesitar utilizar múltiples servicios (base de datos y servicio web) Puede revisar mas detalles en este [Enlace](https://github.com/daiaguirre979/ProyectoMasterCC/tree/master/composicion)

Hito6: http://daihito6.eastus.cloudapp.azure.com

## Licencia

Este proyecto será liberado bajo la licencia [GNU GPL V3](https://github.com/daiaguirre979/ProyectoMasterCC/blob/master/LICENSE)



