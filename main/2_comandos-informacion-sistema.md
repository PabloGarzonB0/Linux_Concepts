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
| `file documentName`    |Permite validar que tipo de archivo un archivo es, describe el tipo de contenido del archivo|

Ahora por otro lado existe comandos muy comunes para aplicaciones de red tales como:

| Comando | Descripcion                            |
| ------- | ------------------------------------------------- |
| `Hostname`     | Imprime el nombre de el sistema anfitrion actual    |
| `ping [optiones] HOSTNAME/IP`  |    Envia una peticion ICMP de paquetes a la direccion indicada (ping -c 4 google.com)                |
| `ifconfig [INTERFACE]`     | Muestra o configura los parametros de la interfaz de red   |


Uno de los comando mas utiles y que se utiliza con frecuencia es el comando `find` este comando facilita encontrar archivos y directorios con facilidad en rutas especificas

```
$ find /home -name "*.jpg"
$ find /home -iname "*.jpg" # no distingue entre mayuscular y minusculas
```
Tu encontraras el  archivo en el directorio en el que te encuentras actualmente. Por otro lado, para hacer busquedas en archivos se pueden utilizar los siguientes comandos
```
$ find /home -type d -name MyFolder
```

Si tu te encuentras dudoso de como utilizar un comando es muy util utilizar el comando `whatis [comando]`, este comando provee una breve descripcion del comando o programa

En el Shell de linux si tus comandos personales se estan extendiendo demasiado puedes utilizar `\` y presionar enter para proseguir los comandos pero verticalmente, como si fuera un salto de linea.

### Como utilizar los alias para personalizar tus comandos

En ocaciones escribir el mismo tipo de comando se vuelve algo tedioso debido a que se debe escribir reiteradas veces en la consola, con un alias es posible solucionar esa molestia. Crear un alias para los comandos largos y cotidianos nombrandolos de una manera simple y conveniente, por ejemplo:

```
$ alias foobar = 'ls -la'
```
Ahora, en lugar de utilizar el comando completo solo utilizadomos foobar, pero ten encuenta que siempre que reinicies el sistema tus alias pueden ser borrados de la memoria asi que deben ser escritor permanentemente en la direccion: `~/.bashrc` o por otro lado, si deseas eliminar ese alias puede utilizar el siguiente comando:
```
$ unalias foobar
```

## COMANDO BASICOS PARA OPERACIONES DENTRO DE UN DIRECTORIO

1. `cat` : Comando practico para visualizar en consola el contenido de un archivo o de multiples archivos 
   ```bash
   $cat dogfile.txt birdfile.csv
   ```
2. `less` : Indicado para  archivos  de texto  que son un poco largos, se utiliza en comandos para visualizar de manera mas comoda el contenido del archivo de forma paginada, se puede navegar por el archivo por paginas. Se pueden utilizar otros comandos dentro del archivo 
    ```bash
        $less /home/pete/Documents/textq
    ```
   Se pueden utilizar los siguiente comando dentro de la vista de less
   - q , para salir de la vista de less
   - g , Moverse del principio del archivo de texto
   - G , mueve a el final del archivo de texto
   - /search , puede buscar una palabra especifica dentro del documento de texto,
   - h , si  necesitas ayuda respecto a como usar el comando less
  
3. `history` : Smestra un historial de todos los comandos utilizados previamente en la seccion actual, es util para recordar comando que se hayan escrito y que no se recuerde como retornar a ellos `Ctrl + R` e otra manera de autocompletar un comando antes escrito.
<h2>
<font color="blue">Importante: </font><br>
</h2>

> Los comandos de manipulacion como CP o MV necesitan de permisos de ejecucion para poder realizar cambios tanto desde el directorio de origen y el destino


4. `cp` : Para realizar copias de un documento de otra ruta o directorio se utiliza este comando, care resaltar que existe multiples maneras de utilizarse, se pueden copiar multiples archivos y directorios considerando comodines ales como los siguientes,
    - * para seleccionar todos los caracteres o alguno String
    - ? usado para representar un caracter
    - [] usado para representar un patron unico se hace dentro de corchetes
Existen algunas opciones importantes del como `-r` que permite copiar recursivamente todo un directorio en otra ubicacion. Por otro lado, si copias un archivo en una ruta donde ya existe se sobrescribe accidentalmente el archivo de la ruta de destino, por eso es importante utilizar la opcion `-i` para solicitar la autorizacion de sobrescritura si se llega a presentar ese caso.

    ```bash
        $cp *.jpg /home/pete/pictures
        $cp -r Pumpkin/ /home/pete/Documents
        $cp -i mycoolfile /home/pete/Pictures
    ```

5. `mv` : Para mover archivos o directorios de una direccion a otra considerando adicionalemente que se puede renombrar los archivos que se mueven
   
 ```bash
        $mv oldfiel newfile              # renombre un archivo
        $mv file2 /home/pete/Documents   # mover un archivo a una direccion diferente
        $mv file_1 file_2 /somedirectory # mover varios archivos a otro direccion
        $mv -b directory1 directory2     # puedes utilizar -b para crear un backup de un archivo y almacenarlo para
                                         # posteriormente utilizarlo.
 ```

## Analizar archivos de texto plano se utilizando los siguiente comandos 

| Comando | Descripcion                                     |
| ------- | ------------------------------------------------|
| `cat`     | Define la ruta donde se encuentra un comando  |
| `more`     |imprime el contenido en paginas               |
| `head`     |Imprime las primeras lineas de un archivo txt |
| `tail`    | Imprime las ultimas lineas de un archivo txt  | 
| `echo`     | Imprimir variables y texto en pantalla       |

[ CONTINUAR SECCION 3 >>]