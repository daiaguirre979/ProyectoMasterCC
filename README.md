## ProyectoMasterCC

Se detalla el proyecto a realizar como trabajo para la asignatura de Cloud Computing. El repositorio del proyecto se encuentra en la siguiente URL: https://daiaguirre979.github.io/ProyectoMasterCC/


***


### Descripción del proyecto

Creación de una pagina web con información relevante de la urbanización,ademas de que permita realizar pagos de alicuotas por medio de paypal de esta forma se evitara atrasos en los cobros de las misma, actualizando información de los residentes..

### Aplicaciones a utilizar.

* Rest API: Permitir el acceso y consumo del servicio vía HTTP,métodos HTTP como GET, POST, PUT y DELETE


* Mysql: Necesitaremos un motor de base de datos para almacenar la infromación que queremos proveer como servcio.


* Apache: Nos permite proporcionar un servidor seguro, eficiente y extensible que proporcione servicios HTTP.

![](https://i.stack.imgur.com/f2D05.png)


### Arquitectura

Arquitectura basada en microservicios, serán desplegados en la nube, en una máquina virtual Ubuntu Server.

### Provisionamiento

Si bien hay muchos sistemas populares de administración de configuraciones disponibles para sistemas Linux, como Chef,Puppet,Ansible; he elegido este último debido a que no requiere la instación de  ningún software adicional en las computadoras del cliente, de esta forma simplifica la administración de servidores. Cualquier servidor que tenga un puerto SSH expuesto puede incluirse en la configuración de Ansible.

## Automatización

Ha sido realizada utilizando el cliente de azure. Se ha configurado una maquina virtual Ubuntu y hemos configurado el provisionamiento antes utilizado. En el siguiente link se detalla como ejecutar el despliegue --> [README](https://github.com/daiaguirre979/ProyectoMasterCC/blob/master/automatizacion/README.md)

La maquina desplegada del hito3.
Despliegue: 104.42.23.144

### Licencia

Este proyecto será liberado bajo la licencia [GNU GLP V3](https://github.com/daiaguirre979/ProyectoMasterCC/blob/master/LICENSE)



