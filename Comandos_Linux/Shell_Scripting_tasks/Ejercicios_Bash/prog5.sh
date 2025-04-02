# Programa que permite generar un menu de gestion de paquetes en Ubuntu
while true
do
echo "Menu de gestion de paquetes"
echo "=========================="
echo  "1. Instalar un paquete"
echo  "2. Eliminar un paquete"
echo  "3. Listar todos los paquetes instalados"
echo  "4. Listar paquete instalado"
echo  "5. Salir"
echo "Ingresa tu opcion"
read op
case $op in
1)echo "Ingrese nombre de paquete a instalar:"
read paquete
sudo apt-get install $paquete
sleep 3;;
2)echo "Ingrese el nombre del paquete que desea eliminar: "
read paquete
sudo apt-get remove -y $paquete
sleep 3;;
3)echo "Listando los paquetes instalados..."
dpkg -l | more
sleep 3;;
4)echo "Ingrese el nombre del paquete que instalo:"
read paquete
dpkg -l | grep $paquete
if [ $? -eq 0 ]; then
    echo "El paquete $paquete esta instalado"
else
    echo "El paquete $paquete no esta instalado"
fi
sleep 3;;
5)exit;;
*)echo "Opcion seleccionada no es valida";;
esac 
done
