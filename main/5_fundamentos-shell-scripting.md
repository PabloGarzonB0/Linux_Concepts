# SHELL SCRIPTING
La programacion de Shell es un proceso secuencial donde un fichero va a tener una serie de comandos que se realizan consecutivamente, util para el desarrollo de tareas de administracion de sistema. Un detallado entendimiento  de los scripts es importante para analizar el comportanmiento del sistema y posibilitar modificaciones.

En los primeros anios de las computadores personales, los lenguajes de bajo nivel permitian escribir programas de computadoras en la generacion de los microcontroladores. Decadas despues, el lenguaje de bash/shell scripting permite con un rudimentario conocimiento de linux manejar las maquinas modernas.

Ahora, podemos minimizar el trabajo de una computadora con una asombrosa capacidad, tal como las Raspberry Pi. Bash Scripting provee una manera de explorar la capacidad de todo tipo de dispositivo. Con shell podemos prototipar aplicaciones complejas 

Para construir un fichero de tipo shell necesitamos de un interprete al inicio del archivo tal que al ejecutarse permite identificar que tipo de lenguaje de programacion se esta utilizando
```bash
    #!/bin/bash

    ### Se procese a escribir el codigo del proyecto ###

```
Se pueden definir variables dentro del fichero pero todo tipo de asignacion de debe realizar sin espacio entre los elementos tal que asi:
```bash
    variablex=23
    # Se pueden definir variables consecutivas
    variable1=43  variable2=34
```
Otra manera de comentar un texto extenso sin la necesidad de tener que usar el comando echo, se puede utilizar el documento a continuacion
```bash
    <<EOF [Texto que se escribe en intermedio]    EOF
```

