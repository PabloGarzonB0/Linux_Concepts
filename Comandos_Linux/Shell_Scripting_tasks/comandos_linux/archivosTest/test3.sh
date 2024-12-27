#! /bin/bash
a=3
b=2
c=$(($a+$b)) # Operaciones ariteticas deben esta dentro de parentesis
#d = $((3/2))
echo "Este es el resultado que esperabas"
echo $c

# Tener presente que no se manejan valores floating por lo tanto se truncan a su valor entero
my_array=(1 2 "three" "four" 5)
echo $my_array
declare -a empty_array #decaracion de un array vacio

my_array+=("six")
my_array+=(7)

# Manera de imprimir lo que se encuentra dentro de un array
echo ${my_array[0]}
echo ${my_array[2]}
# Imprimir todos los elementos
echo ${my_array[@]}


