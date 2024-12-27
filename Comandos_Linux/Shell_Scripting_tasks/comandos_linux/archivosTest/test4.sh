#! /bin/bash
my_array=("Pablo" "Cesar" "Garzon" 5)
#Loop para recorrer vectores
for elemento in ${my_array[@]}; do
    echo -n $elemento
    printf "$s " "$elemento" #Impirme en la misma linea un espacio
done

# Conteo de numeros del 1 al 6
N=6
for ((i=1; i<=$N; i++)); do
   echo $i
done



