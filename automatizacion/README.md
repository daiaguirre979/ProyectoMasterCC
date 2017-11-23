### Azure Cli - Automatización

Es un entorno de scripting para crear y administrar recursos de Azure. Utilizaremos una maquina virtual Ubuntu 16 , la cual aplicaremos la automatización y el provisionamiento aplicado anteriormente.

### Pasos a seguir para su instalación.

1. Actualizar la versión 
* sudo apt-get 

2. Instalar paquetes necesarios.

>
>>   * sudo apt-get install -y libssl-dev libffi-dev python-dev build-essential
>>

3. Instalar Azure Cli 

>
>>   * curl -L https://aka.ms/InstallAzureCli | bash
>>   * exec -l %SHELL
>>   * az --version

4. Conectarse a Azure Cli

>
>>   * az login
>>

5. Ejecutar el script acopio.sh, para crear maquina virtual desde Azure-Cli y a su vez utilizar el provisionamiento, para nuestro proyecto.

>
>>   * sh acopio.sh
>>

![Con titulo](https://raw.githubusercontent.com/daiaguirre979/CC-Master/master/automatizacion.png "automatizacion")

