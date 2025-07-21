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

## Funciones en Linux
Las estructuras de funcion tienen una baja complejidad y en si representan la separacion en un componente individual de todo un sistema, se construyen de la siguiente manera
```bash
miFunction () {
    "Comando a procesar"
    # Implementacion de parametros en base a los argumentos llamados a la funcion
    $1
    $2
    $3
    local variable1=valor # La definicion de variables internas se define con termino local que establece el alcance de la variable, en este caso solo dentro de la funcion
    return 
}
# Llamado a la funcion
miFunction arg1 arg2 arg3
```

Es importante  cconsiderar que la funcion se puede crear con retorno o sin returno y los argmentos que utiliza se organizan secuencialmente con el patron $1, $2, $3 y $4 asi sucesivemente,
en el caso de  introducir una condicion por linea de comando y se desea ver el valor de retorno en la misma consola se procede a utilizar el comando **echo $1** que returnara la respuesta de la condicion especificada por consola

Expresiones utilizadas para evaluar condiciones con números utilizada para condicionales o para ciclos como while o for:

                  Expresión                                    Verdadero si...

integer1 -eq integer2     →     integer1 es igual a integer2

integer1 -ne integer2     →     integer1 no es igual a integer2

integer1 -le integer2     →     integer1 es menor que o igual a integer2

integer1 -lt integer2     →     integer1 es menor que integer2

integer1 -ge integer2     →     integer1 es mayor que o igual a integer2

integer1 -gt integer2     →     integer1 es mayor que integer2



Expresiones utilizadas para evaluar condiciones con strings:

           Expresión                                    Verdadero si...

string                                →     string no es null.

-n string                         →     La longitud de string es mayor a cero

-z string                         →     La longitud del string es cero

string1 = string2       →     string1 y string2 son iguales

string1 == string2     →     string1 y string2 son iguales

string1 != string2     →     string1 y string2 no son iguales



Expresiones utilizadas para evaluar condiciones con ficheros:

                  Expresión                                    Verdadero si...

file1 -ef file2      →     file1 y file2 tienen el mismo número de inodo (mismo hard link)

file1 -nt file2      →     file1 is mas nuevo que file2

file1 -ot file2      →     file1 is mas antiguo que file2

-b file                        →     file existe y es un block-special (device) file

-c file                        →     file existe y es un character-special (device) file

-d file                        →    file existe y es un directorio

-e file                        →     file existe

-f file                        →     file existe y es un fichero regular

-k file                        →    file existe y tiene “sticky bit”

-L file                        →    file existe y es un enlace simbólico

-s file                        →    file existe y tiene longitud mayor a cero

-u file                        →     file existe y es setuid

-w file                        →    file existe y se puede escribir (por el usuario efectivo)

-x file                        →    file existe y es ejecutable (por el usuario efectivo)

## Estructura de ciclos 

El ciclo for tiene la siguiente estructura que se ejecuta dentro de la shell
```bash
    #for i in {1..10}; do
#	echo "Esta es la iteracion $i"
#done


# Se puede iterar sobre ficheros
#for i in /var/log/*.log; do
#	echo "Esta iteracion va bien en :  $i"
#done

# se itere sobre todos los ficheros para encontrar elementos .zip
#for i in $(find /usr/bin -name '*zip'); do
#	echo "Esta iteracion actua sobre el fichero: $i"
#done


for ((i=0; i<5; i=i+1)); do
	echo "Esta es la iteracion: $i"
done
```

se presenta por otro lado la estructura del ciclo while:
```bash
#!/bin/bash

var=4
while [ $var -lt 10  ]; do
	echo "El valor de la variable es: $var"
	if [ $var -lt 5 ]; then
		break
	fi
	var=$((var + 1))  # variable de iteracion externo
	# break para romper el seguimiento del bucle
	# continue para saltar una iteracion del bucle
done

echo "Esta linea se encuentra despues del bucle"
```

Por otro lado se tiene el ciclo **until** funciona como el caso contrario de while, es decir que se va a ejecutar hasta que una condicion se cumpla, pero en este caso sigue el flujo inverso de while. Un ejemplo se presenta a continuacion.

```bash
    #!/bin/bash

    var=4
    until [ $var -lt 1 ]; do
        echo "El valor de la variable es: $var"
        var=$((var-1))
    done
```
En lugar de utilizar indefinidamente multiples  if y else if se pueden utilizar los case como las diferetes variantes de una lectura, ya sea en tipo numerico o en tipo string, al finalizar cada uno de los casos es importante cerrar el caso con un ;;
```bash
    read -p "Introduce la opcion [0-3]: "
    case "$REPLY" in
        1) echo "El usuario ha seleccionado la opcion a"
            ;;
        2) echo "El usuario ha seleccionado la opcion b"
            echo "Esta es otra linea de codigo"
            ;;
        3) echo "El uuaroi ha seleccionado la opcion c"
            ;;
        4) exit
    esac
    # cada undo de los casos puden ser remplazados por wildcards o patrones de expansion tales como [[:alpha:]] o *.txt y asi en adelante.
```

## Comando read
En el caso de interactuar por consola, es posible que podamos introducir datos en variables utilizando el comando read, asi bien, para poder ver el valor de esas variables  si se ingresapor defecto es introducir el comando ```echo $REPLY``` que imprime en pantalla el valor ingresado.


### Array - arreglos multidimensionales

para la declaracion de arreglos es importante su declaracion para ello se utiliza el siguiente comando ```declare -a var_array ```
los valores se pueden asignar rapidamente al arreglo mediante la siguiente expresion array=(valor1 valor2 valor3 valor4 valor5)

Para extraccion de todos los elementos de un vector mediante un bucle se utiliza la siguiente combinacion:
```bash
    colores=(azul verde amarillo rojo)
    for i ${colores{*}}; do echo $i; done
    echo ${#colores[*]}  # Trae consigo el tamano del vector
    echo ${#colores[1]}  # Trae consido el tamano del elemento 1
    echo ${colores[1]}   # Trae el primer elemento
    echo ${!array3[*]]}  # Posiciones dentro del array se encuentran ocupadas
    colores+=(morado negro blanxo)  #Agregar nuevos valores al vector
    unset colores # Eliminacion de variables
```




