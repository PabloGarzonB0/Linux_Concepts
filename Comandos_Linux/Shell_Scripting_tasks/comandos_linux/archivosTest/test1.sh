#! /bin/bash 

# Primera prueba de un archivo bash

if [[ $# == 2 ]]
then
	echo "number of arguments is equal to 2"
else
	echo "number of arguments is not equal to 2"
fi

read string_var

if `[ $string_var == "Yes" ]`
then 
	echo "Acertaste con la respuesta correcta"
else
	echo "No acertaste con la respuesta correcta"
fi
