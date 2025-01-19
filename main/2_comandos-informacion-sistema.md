## Comandos para obtener informacion sobre el sistema
A continuacion se presentan comandos muy utiles para obtener informacion general del sistema

| Comando | Descripcion                            |
| ------- | -------------------------------------------------   |
| `which`     | Define la ruta donde se encuentra un comando    |
| `whoami`     |Retorna el nombre de usuario                    |
| `id`     | Retorna el Usurio actual o ID de grupo             |
| `uname [options]`    |Despliega informacion del sistema operativo|
| `date`     | Muestra en pantalla la fecha actual y tiempo   |
| `ps `    |(process status) muestra informacion de los procesos actuales (ej. ps -ef)|
| `top`     |(table of processes) muestra el uso de memoria del sistema en tiempo real  |
| `df`    |(Disk Usage) muestra el uso de espacio de memorio (ej. df -h)|

Ahora por otro lado existe comandos muy comunes para aplicaciones de red tales como:

| Comando | Descripcion                            |
| ------- | ------------------------------------------------- |
| `Hostname`     | Imprime el nombre de el sistema anfitrion actual    |
| `ping [optiones] HOSTNAME/IP`     |    Envia una peticion ICMP de paquetes a la direccion indicada (ping -c 4 google.com)                |
| `ifconfig [INTERFACE]`     | Muestra o configura los parametros de la interfaz de red   |


Uno de los comando mas utiles y que se utiliza con frecuencia es el comando `find` este comando facilita encontrar archivos y directorios con facilidad en rutas especificas

```
$ find /home -name "*.jpg"
```
Tu encontraras el  archivo en el directorio en el que te encuentras actualmente. Por otro lado, para hacer busquedas en archivos se pueden utilizar los siguientes comandos
```
$ find /home -type d -name MyFolder
```

Si tu te encuentras dudoso de como utilizar un comando es muy util utilizar el comando `whatis [comando]`, este comando prove una breve descripcion del comando o programa

En el Shell de linux si tus comandos personales se estan extendiendo demasiado puedes utilizar `\` y presionar enter para proseguir los comandos pero verticalmente, como si fuera un salto de linea.

### Como utilizar los alias para personalizar tus comandos

En ocaciones escribir el mismo tipo de comando se vuelve algo tedioso debido a que se debe escribir reiteradas veces en la consola, con un alias es posible solucionar esa molestia. Crear un alias para los comandos largos y cotidianos nombrandolos de una manera simple y conveniente, por ejemplo:

```
$ alias foobar= 'ls -la'
```
Ahora, en lugar de utilizar el comando completo solo utilizadomos foobar, pero ten encuenta que siempre que reinicies el sistema tus alias pueden ser borrados de la memoria asi que deben ser escritor permanentemente en la direccion: `~/.bashrc` o por otro lado, si deseas eliminar ese alias puede utilizar el siguiente comando:
```
$ unalias foobar
```