# Menu interactivo de operaciones del sistema
while true
do clear
echo "Menu de operaciones del sistema"
echo "1. usuario logeado"
echo "2. fecha y hora del sistema"
echo "3. version del kernel"
echo "4. salir"
echo "ingrese la opcion:"
read opcion 
case $opcion in
1)echo "El usuario logeado es:"
whoami
sleep 3;;
2)echo "La fecha y la hora es:"
date 
sleep 3;;
3)echo "La version del kernel es:"
uname -r
sleep 3;;
4)exit;;
*)echo "Opcion no valida";;
esac
done
# Fin del script