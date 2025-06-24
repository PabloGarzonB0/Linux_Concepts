# Menu de opcion que permite dar mantenimiento de archivos
#!bin/bash
while true; 
do
    clear
    echo "Menu de mantenimiento de archivo"
    echo "1. Verifica si un archivo existe"
    echo "2. Crear un archivo"
    echo "3. Eliminar un archivo"
    echo "4. Renombrar un archivo"
    echo "5. Salir"
    read -p "Seleccion una opcion:" opcion
    case $opcion in
    1)
    read -p "Ingrese el nombre del archivo a verificar:" archivo
    if [ -e $archivo ]; then
        echo "El archivo $archivo  existe."
        else
        echo "El archivo $archivo no existe."
    fi
    ;;
    2)
    read -p "Ingrese el nombre del archivo a crear:" archivo
    touch $archivo && echo "El archivo $archivo fue creado."
    ;;
    3)
    read -p "Ingrese el nombre del archivo a eliminar:" archivo
    if [ -e $archivo ]; then
        rm %archivo && echo "El archivo $archivo fue eliminado exitosamente."
    else
        echo "El archivo $archivo no existe."
    fi
    ;;
    4)
    read -p "Ingrese el nombre actual del archivo:" archivo
    if [ -e $archivo ]; then
        read -p "Ingrese el nombre nuevo del archivo:" nuevo_nombre
        mv $archivo $nuevo_nombre && echo "El archivo $archivo fue renombrado a $nuevo_nombre satisfactoriamente."
    else
        echo "El archivo ingresado no existe."
    fi
    ;;
    5)exit;;
    *)echo "Opcion ingresada no valida.";;
    esac
done