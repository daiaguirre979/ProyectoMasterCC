PROVISIONAMIENTO DEL PROYECTO
------------------------------

#### Para el proyecto se selecciono el tipo de provisionamiento ansible el cual fue realizado en una maquina virtual con SO Ubuntu 14.0.

#### Acontinuacion se detalla los pasos para su configuracion.

1. Verificar la version de Pyton 2.7 o superior.
>
>>	python --version

2. Para la instalaccion de ansible.

>
>>	* sudo apt-get install software-properties-common
>>	* sudo apt-add-repository ppa:ansible/ansible
>>	* sudo apt-get install ansible

3. Modificar el archivo /etc/ansible/hosts donde indicaremos el o los nodos donde se ejecutaran las tareas automaticamente.

>
>>	[webserver]
>>	192.168.1.94

4. Como modo se seguridad vamos a crear un par de claves para la autenticacion ssh y finalizando verificamos su conexion.

>
>>	* ansible all -m ping -u root


![Con titulo](https://github.com/daiaguirre979/CC-Master/raw/master/ansible1.png "ansible")


5. Crear playbook, de las tareas necesarias.

>
>> 	- hosts: webservers
>>	  user: root
>>	    - name: Actualización de repositorios
>>	      apt:
>>	      update_cache: yes...


6.- Finalmente ejecutamos el playbook

>
>>	ansible-playbook webserver.yml


![Con titulo](https://github.com/daiaguirre979/CC-Master/raw/master/ansible.png "playbook")
