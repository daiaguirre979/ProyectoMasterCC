## ProyectoMasterCC

Se detalla el proyecto a realizar como trabajo para la asignatura de Cloud Computing. El repositorio del proyecto se encuentra en la siguiente URL: https://daiaguirre979.github.io/ProyectoMasterCC/

***

### Descripción del proyecto

Creación de una pagina web con información relevante de la urbanización,ademas de que permita realizar pagos de alicuotas por medio de paypal de esta forma se evitara atrasos en los cobros de las misma, actualizando información de los residentes..

### Aplicaciones a utilizar.

1. Rest API: Permitir el acceso y consumo del servicio vía HTTP,métodos HTTP como GET, POST, PUT y DELETE
[](https://i.stack.imgur.com/f2D05.png)

2. Mysql: Necesitaremos un motor de base de datos para almacenar la infromación que queremos proveer como servcio.
[](http://www.grupotitan.com/wp-content/uploads/2015/05/mysql-respaldo-767x767.png)

3. Apache: Nos permite proporcionar un servidor seguro, eficiente y extensible que proporcione servicios HTTP.
[](http://www.grupotitan.com/wp-content/uploads/2015/05/mysql-respaldo-767x767.png)


### Arquitectura

Arquitectura basada en microservicios, serán desplegados en la nube, en una máquina virtual Ubuntu Server.

### Provisionamiento

Si bien hay muchos sistemas populares de administración de configuraciones disponibles para sistemas Linux, como Chef,Puppet,Ansible; he elegido este último debido a que no requiere la instación de  ningún software adicional en las computadoras del cliente, de esta forma simplifica la administración de servidores. Cualquier servidor que tenga un puerto SSH expuesto puede incluirse en la configuración de Ansible.

### Licencia

Este proyecto será liberado bajo la licencia *[GNU GLP V3]("https://github.com/daiaguirre979/ProyectoMasterCC/blob/master/LICENSE)



