#!bin/bash
# Programa para la suma de 2 numeros
clear
echo "Ingrese el primer numero: "
read a
echo "Ingrese el 2do numero: "
read b
c=$(expr $a + $b)
d=$(($a - $b))
e=$(($a "*" $b))
f=$(($a "/" $b))
echo "La resta es: $d"
echo "La multiplicaion es: $e"
echo "la division es: $f"
echo "la suma es: $c"
