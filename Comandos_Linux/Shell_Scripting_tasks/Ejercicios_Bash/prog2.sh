#!bin/bash
#PROGRAMA PARA EVALUAR SI UN ALUMNO APROBO UN CURSO
clear
echo "INGRESE EL NUMERO DEL CURSO:"
read a
echo "INGRESE LA PRIMERA NOTA: "
read nota1
echo "INGRESE LA SEGUNDA NOTA: "
read nota2
suma=`expr $nota1 + $nota2`
e=`expr $suma "/" 2`
if [ $e -ge 13 ]
then
    echo "curso: $a"
    echo "Alumno aprobado satisfactoriamente"
else
    echo "curso: $a"
    echo "Alumno desaprobado: $e"
fi