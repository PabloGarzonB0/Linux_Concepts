## Comodines
Los comodines son determinados simbolos que realizan operaciones generales que se aplican sobre los archivos de una ruta. Es muy similar a las expresiones regulares, los mas populares son lo siguientes:
1.  * : Este comodin permite abreviar que la descripcion siguiente del archivo puede tener el nombre cualquiera
2.  ? : reemplara el valor de cualquier caracter que se encuentra en esta posicion del texto
3.  :digito: : para expecificar la existencia de un digito 
4.  :alpha:  : para caracteres
5.  :alnum:  : para elementos alfanumericos
6.  :upper:  : para mayusculas

```bash
cat fichero[[!:digito:]].txt   # Indica el fichero junto a un digito
cat fichero[[:alpha:]].txt   # Indica el fichero junto a un digito
cat fichero[[:alnum:]].txt   # Indica el fichero junto a un digito
cat fichero[[:upper:]].txt   # Indica el fichero junto a un digito

```
Es importante tener cuidado con este tipo de comodines, cuando se utiliza el comando rm, dado que podria traer consecuencias al eliminar archivos en operaciones como la siguiente

```bash
rm * .csv   # Evitar cometer este tipo de errores dado qu ees imposible recuperar la informacion de esto 
rm -rf /    
```

### Ejercicios de practica con usar los comodines
1. Busca todos los ficheros que se encuentran en /usr/bin u terminan por un numero
2. Busca todos los ficheros en el sistema de ficheros de Linux que contenga dos carecteres _ en el nombre y terminen en .txt
3. Busca todos los ficheros en /var/log que no terminen en .log

```bash
#Solucion 1:
find /usr/bin  -name '*[[:digito:]]'
```
```bash
#Solucion 2:
find /  -name '*_*_*.txt' 2> /dev/null
```
```bash
#Solucion 3:
find /var/log -name '*[!.log]' 2> /dev/null
find /var/log -type f -not -name "*.log"
```
Las expresiones regulares en linux son muy importantes dado que podemos crear muchas operaciones para encontrar archivos, algunas de ellas son las siguientes:

```bash
ls fichero* # Busca todos los elementos que sean de tipo fichero
mkdir texto{1..5}.txt    #Generar archivo enumerados desde el 1 al 5 
```

La shell tiene la capacidad de expandir las respuestas que nosotros deseamos ver en consola, para eso se utiliza el comando echo, que tiene la capacidad de mostrar en pantalla el resultado de una variable, pero al mismo tiempo puede realizar la expansion de una consulta.

```bash
echo ~
echo * 
echo /*/log   # se puede extraer todos los directorios que tengan a log dentro de la ruta raiz
```
Se pueden realizar operaciones aritmeticas pero se debe tener en cuenta que estas se llevan a cabo dentro de la siguiente estructura

```bash
    $((5 + 2))
    cat fichero_$((3+2)).txt
    echo fichero{1,2,3}.txt
    echo fichero{1..100}.txt
```
![alt text](image.png)

Tal que la expansion en la shell es una poderosa herramienta que permite crear de forma automatica archivos y elementos. Podriamos crear carpetas que se separen por anio y agregar cada los 12 meses para almecenar informacion temporal.

```bash
    mkdir {2020..2024}-{01..12}
```
Se pueden utilizar comandos de sustitucion para tomar la salida de un comando como entrada para el siguiente, en este situacion se ejecuta el comando entre parentesis para ser empleado en encomandos un poco mas complejos, en el siguiente ejemplo a continuacion se demuestra

```bash
    ls -la $(which cat)
    ls -la `which cat`  #Exactamente lo mismo a lo anterior
    echo $(python3  -c 'print("Hola mundo")')
```

### Diferenciacion entre las comillas dobles y comillas simples en linux
`''` se utiliza para tomar el texto literal que se escribe en la shell, es decir que considera el espacio en blanco tal cual se escribe en la consola, tomas las palabras separadas por uno o mas espacios y tomaran como un unico argumento.
```bash
    echo 'Este es un texto compredo con    espacios'
```

`""` 

