## Terminal de linux
El sistema de archivos de linux contiene los archivos para ejecutar maquinas y manipular aplicaciones de forma rapida y eficiente desde un puente (terminal de linux), un medio de comunicacion que permite la gestion el sistema interno de una computadora `User` -> `Terminal` -> `Shell` -> `Os kernell` -> `Hardware`.

> El directorio raiz es el punto de inicio para navegar dentro de linux OS y se  ubica como ** / ** 

/bin : Directorio que cuenta con archivos binarios, es decir el codigo que corre la maquina para ejecutar programas y comandos <br>
/usr : Contiene programas de usuario <br>
/home : Aqui se encuentran nuestros archivos de trabajos que se frecuentaran constantemente (Documentos, imagenes, descargas, ect) <br>
/boot : contiene los archivos de arranque del sistema, instrucciones para el inicio del sistema <br>
/medio: archivos relacionados con soporte temporal, unidades CD o USB conectadas al sistemas <br>

entre otros directorios mas que se aprenderan en un nivel avanzado

## Linux shell
Shell es una aplicacion a nivel de sistema operativo que interpreta comandos por consola, siendo flexible y sencillo para archivos script, shell se utiliza para diferentes tareas como  mover archivos, copiar archivos, escribir, leer archivos, extraer y filtrar archivos y buscar datos.
los shell peuden ser de diferente tipo, son interpretes mas avanzados de los comandos con funcionalidades unicas, ellos son:
1. sh
2. ksh
3. tcsh
4. zsh
5. fish

algunos de los comandos especiales para moverse por las rutas de archivos son los siguientes
| Simbolo | Representa ruta a..                               |
| ------- | ------------------------------------------------- |
| `~`     | Te dirige a directorio home                       |
| `/`     | directorio root                                   |
| `.`     | directorio actual de trabajo                      |
| `..`    | dirige al directorio padre de la direccion actual |


## Comandos de asistencia incial de comandos de la terminal
Generalmente saber todas las posibilidades que trae consigo la terminal de linux requiere de tener a la mano una herramienta de asistencia que brinde informacion
de 
| :boom: | Comando                                                                                                             |
| ------ | :------------------------------------------------------------------------------------------------------------------ |
| type   | Permite distinguir el tipo de comando que se utiliza (aveces son build-in o se encuentra en un fichero de comandos) |
| help   | describe  con detalle la capacidad de un comando, cuenta con sus variantes como -s -m -d                            |
| man    | instruccion practica para usar un comando                                                                           |
| info   | describe  con detalle la capacidad de un comando                                                                    |
| tldr   | Tutoral para usar un comando, caracteristicas del comando                                                           |


# Comandos principales para guiarse dentro de la terminal de linux 
```
$ ls  
``` 
permite listar los archivos y elementos de un directorio
```
$ ls -l  
```
 permite listar los archivos y dar mas detalles como permisos, tamano, fecha de modificacion
 Es importante considerar unas opciones del comando ls tales como:
 - -R lista los archivos recursivamente
 - -a muestra los archivos, incluidos los ocultos
 - -lh convierte los tamanos de los formatos legible como MB, GB, TB

```
$ cd 
```
 comando maestro para movernos de una ruta a otra, lo haria desde el directorio actual donde se encuentra, se cuede combinar con ./archivofiles/treeefile/  o se puede utilizar para retroceder a un directorio padre cd ../../../home/pablo/files1
```
$ pwd 
```
Comando para ver en que ruta me encuentra actualmente

> [!TIP]
> Para ejecutar un archivo ejecutable desde la ruta actual se utiliza la siguiente sintaxis ./file.exe
> Para ejecutar un archivo utilizando un compilador o interpreta se utiliza algo como esto python3 file.py  o puede ser bash fileScripting.sh

# Editores de texto

Una de las herramientas mas poderosas con las que puenta la terminal de linux son sus diferentes clase de editores, tamanos, colores y forma. Estos pueden basarse en lina de comandos, editor de texto basado en GUI, o los tradicionales para CLI (comando puro, desde la epoca de los dinosaurios)

### Editores para linea de comandos
- GNU nano : editor de texto flexible, facil de usar y con una convencion de operaciones practico, sintasis facil, identable, enumera numero de lines, multiples buffers
- vi : Editor de texto existente desde la aparicion de UNIX
- vim : La actualizacion y mejora de vi, este editor es generalmente usado por los ancestrales, eruditos del codigo

Tenga en cuenta que vi y vim tiene 2 modos de operacion, el modo **Insertar** y el modo **comandos** <br>
para estar en el modo insertar hay que precionar la techa [i] Y para ingrasar al modo de comando se utiliza la tacla [ESC]

 `:sav file.txt` se utiliza para guardar los cambios hechos sobre el archivo,<br> `:w` se utiliza para escribir en el archivo <br> `:q` se utiliza para salir de la sesion <br> `:q!` se sale sin guardar los cambios. 

 Dentro de Linux OS existen los  `paquetes ` que son archivos de almacenamiento que contienen componentes necesarios para instalar software o actualizaciones y los  `Gestores de paqueetes` que se utilizan para destionar descaras o instalas paquetes 
 los paquetes mas comunes son los  `.deb` y los  `.rpm` que son compatibles con diferentes tipos de distribuciones, los primeros son compatibles con debian, ubuntu y Mint, mientras que los segundos son compatibles con CentOs/RHEL, fedora y Red Hat
Existen gestores de paquetes que se basdan en GUI tales como PackegeKit y Update Manaager utilizados para instalaciones automaticas, resolver dependencias o notificar actualizaciones.

> [!WARNING]
> Es importante, siempre antes de hacer una actualizacion actulizar dependencias y actualizaciones disponibles de todas las aplicaciones con el comando `sudo apt update` enlista actualizaciones y `sudo apt upgrade` este ultimo actuliza los paquetes disponibles

El comando para crear directorio cuenta con diferentes opciociones tales como 
- -p: crea un directorio entre dos carpetas exsitentes  `musica/newfile/cancion1`
- -m: establece los permisos de una carpeta tal como `mkdir m777 directory`
- -v: imprime un mensaje al momento de crear directorio
```
$ mkdir directory-name 
```
El comando para crear archivos es el siguiente dentro de la ruta actual de directorio:
```
$ touch file-name
```
Si quieres borrar archivos o directorios se spuede usar el comando rm con las siguientes variantes
- -i: pide una confirmacion antes de borrar
-  -f permite eliminar archivos sin confirmacion
-  -r borra archivos y directorios recursivamente
```
$ rm  archive.txt
```


