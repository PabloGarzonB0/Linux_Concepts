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