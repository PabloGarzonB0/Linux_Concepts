
#! /bin/bash

# Consultar las variables al usuario
echo -n "Ingrese el primer numero entero: "
read valor1;

echo -n  "Ingrese el segundo numero entero: "
read valor2;

sum=$(($valor1+$valor2))
product=$(($valor1*$valor2))

echo "Sume de $valor1 + $valor2 es $sum"
echo "El producto de $valor1 + $valor2 es $product"

if [ $sum -lt $product ]
then
   echo "La suma es menor que el producto"
elif [[ $sum == $product ]]
then 
   echo "La suma es igual al producto"
elif [ $sum -gt $product ]
then
   echo "La suma es mayor que el producto"
fi
