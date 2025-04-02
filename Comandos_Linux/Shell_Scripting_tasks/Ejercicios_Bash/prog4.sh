# Programa para buscar un archivo existente
clear
cd /programas
echo "Ingrese el nombre del archivo que busca:"
read a
if [ -f $a ]
then
	echo "El archivo existe"
else
	echo "El archivo no existe"
fi


