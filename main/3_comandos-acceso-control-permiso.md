## 1. Permisos de archivo
La manera practica de ver los permisos que tienen los archivos es como se presenta a continuacion:

 ```bash
        $ ls -l Desktop/

    output
        d rwxr-xr-x 2 pete penguins 4096 Dec 1 11:45 .****
        # El orden del registro es: tipoArchivo | permisos | cantidad de enlaces fijos | usuario | grupo propietario | tamano | fecha ultima modificacion | nombre archivo
 ```
El primer caracter indica si el archivo es de tipo directorio (d) o por el caso contrario es de tipo archivo (-)
cada 3 bits se establecen los diferentes permisos para el **usuario**, luego para el **grupo** y finalmente para **otros**
Los caracteres representan lo siguiente:

- x : lectura
- w : escritura
- \- : vacio
  
## 2. Modificacion de permisos

Se pueden agregar o remover permisos mediante  los operadores + o - a continuacion se muestran algunos ejemplo de como se debe hacer

 ```bash
    chmod u+x myfile
    chmod u-x myfile
    chmod ug+w
  ```
Existe otra manera para dar permisos en un formato numerico, estos numeros de 3 digitos determinan leer, escribir y ejecutar representaciones por un valor numerico considerando los siguiente valores

- r (read) - 4
- w (write) - 2
- x (execute) - 1
  
  Entonces, si se quieren dar todos los poderes a un usuario rwx, se tiene que considerar leer(4), escribir(2) y ejecutar (1) que al sumarlos da 7, si tenemos el numero 744 entonces tendriamos los permisos `rwx -w- -w-`

A continuacion se muestra en las siguiente imagenes algunos de los comandos mas comunes para permisos que puedes implementar.

# Permisos para archivos
<div style="text-align:center;">
<img src="/Comandos_Linux/pictures_folder/Chmod1_PermisosArchivos.jpg"  width="600">
</div>

# Permisos para directorio
<div style="text-align:center;">
<img src="/Comandos_Linux/pictures_folder/Chmod2_PermisosDirectorio.jpg"  width="600">
</div>

# Cambiar los propietarios de archivos y carpetas

Para esta tarea utilizaremos el comando chown considerando la siguiente sintaxis

```bash
    chown [propietario/grupopropietario] [nombre del archivo]
```

Caso 1: Si queremos que el archivo "miarchivo.txt" cambie de propietario al "hostinger" podemos utilizar el comando a continuacion

```bash
    chown hostinger miarchivo.txt
```
O por otro lado queremos que cambiar el grupo propietario a "cliente" se introduce el siguiente linea en su lugar

```bash
    chown :clientes miarchivo.txt # : indica que se trata de un grupo propietario
    # -v (verbose) te da un diagnostico de los archivos que son procesados por el comando
    # -c (changes) solo proporciona informacion si los cambios fueron hechos
```
# permisos de propietario
Para oficializar los permisos de usuario sobre un archivo es necesario considerar sudo para contar con los permisos de administrador

```bash
    $ sudo chown patty myfiel 
    # Para conceder permisos de grupo
    $ sudo chgrp whales myfile
    # Para conceder permisos de usuario y grupo al mismo tiempo
    $ sudo chown patty:whales myfile
```
# Comandos para presentar fecha en consola
Si deseas ver la ultima fecha de modificacion de un archivo se puede utilizar el siguiente comando 

```bash
    date -r note.txt
```
No solamente eso, sino que tambien puede utilizar date para formatear la forma en la que quiere ver la fecha considerando las diferentes indicadores para el dia, el mes, minutos, segundos, ect.

```bash
    date "+%j day of %y"
    # %d indica el dia del mes
    # %h indica la abreviatura de mes
    # %m indica el mes
    # %y indica el an"o
    # %T indica el tiempo en formato de 23 horas
    # %H indica la hora
```

# Busqueda  de archivos
Para buscar ficheros y directorios dentro arbol de archivos se utiliza muy a menudo para buscar archivos de diferente extension, reconocido por la palabra clave `find` mantiene la siguiente estructura: find {ruta del archivo} {-type} {-name} {"nombre especifico del archivo"}

- Ejemplo 1
```bash   
    find /home -name puppies.jpg
```
- Ejemplo 2
```bash   
    find . -name "a.txt"
    find . -iname "a.txt" # No se distingue entre mayusculas y minusculas
```
- Ejemplo 3 : busqueda de archivos vacios
```bash   
    find ruta -type f -empty
    find ruta -type d -empty
```
## Comandos para movilidad dentro de la consola de comandos

| Comando | Descripcion                                     |
| ------- | ------------------------------------------------|
| `ctrl + A `     | Irse al principio del texto  |
| `ctrl + E `     |Irse al final del texto       |
| `ctrl + l`     |Limpia la consola |
| `ctrl + p`    | Trae el ultimo comando utilizado  | 
| `ctrl + R`     | Busqueda recursiva de un comando |
| `ctrl + b`    | Ir hacia atras  | 
| `ctrl + f`    | Ir hacia adelante |
| `ctrl + .`    | referencia el comando anterior  | 
| `$`     | Utiliza el ultimo comando empleado |
| `ctrl + k`    | Sirve para cortar el texto que tenemos enfrente  | 
| `ctrl + u`     | Borra la linea anteiorr a la posciion actual |
| `ctrl + c`    | Interrumpe la ejecucion de un programa  | 
| `ctrl + D`     | Cierra la shell actual |
| `ctrl + T`    | cambia los caracteres de posicion  | 


### Ejercicio con comando find
Utilizar el comando find para buscar los siguiente ficheros dentro de Linux
1. Busca la ruta donde se encuentrael comando externo ls utilizando find. Asegurarse de eliminar los mensajes de acceso denegado producidos
2. Buscar directorios de configuracion del programa firefox que viene instalado por defecto en Ubuntu
3. Buscar el usuario propietario del fichero shadow que se encuentra en algun lugar del sistema de ficehros de Linux excluyendo apellos ficheros shadow qeu se encuentrandentro de la ruta /snap

La solucion a este problema lo encuentra aqui. [solucion](/main/Solucion1_3.txt)


 Enlace suave ->  Se utiliza para hacer un enlace de referencia a un fichero    ej: ln -s  [ruta a referencia] [nombre_ruta], si se borra el archivo principal los enlaces se pueden romper 
 Enlace duro -> Se utiliza para hacer un acceso directo a los datos de una direccion dada ej: ln [ruta a donde apunta] [nombre ruta]

 ## Redireccoin I/O 
 Se puede apregar contenido a un archivo con una fucnio de direccionameinto (E/S) permite enviar la inforamcion de la linea de comandos a archovs,dispositivos y otros campos.

 (I/O): rutos que se utilizan como interfaces para los archivos
 - STDIN : Entrada estandar de comandos
 - STDOUT :Infomacion que muestra el comando (salida estandar)
 - STDERR :Error estandar cuando no se ejecuta un comando correctamente,
  
Direccionar un archivo en un sistema utilizamos:
'> : para generar un nuevo archivo'
'>> : sobre escribe un archivo'

En esta situacion la salida de un comando que se mostraria en colosa se guardaria en un archivo utilizando la redireccion . y >>, es importante tambien tener en cuenta que usar 2> y 2>> permite guardar los errores obtenidos dentro de esos archivos

Ejemplo:
```bash
    ls -lah > salida_ls.txt
    echo "$(ls)" >> salida_ls.txt
```