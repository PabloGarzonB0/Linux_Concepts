#!/bin/bash
# csv_file=csv_file="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-LX0117EN-SkillsNetwork/labs/M3/L2/arrays_table.csv"
# wget $csv_file

data_file="./arrays_table.csv"  # Trae el archivo .csv descargado
Output_file="./newTable.csv"

# separar los datos de las 3 columnas
column_0=($(cut -d "," -f1 $data_file))  #Extrae y trae la primera columna
column_1=($(cut -d "," -f2 $data_file))  #Extrae y trae la segunda columna
column_2=($(cut -d "," -f3 $data_file))  #Extrae y trae la tercera columna

# Impresion de la primera columna
echo "Mostrar en pantalla la primera columna: "
echo "${column_0[@]}"
# Crear un nuevo array con la diferencia de la columna2 y columna1
column_3=("column_3") #array vacio

# Obtencion de el numero de lineas por columna
nLines=$(cat $data_file | wc -l)
echo "El numero de filas son: $nLines"

for((i=1; i<$nLines; i++));do #linea 0 contiene los encabezados
    column_3[$i]=$((column_2[$i]-column_1[$i]))
done  

# Crear un nuevo archivo CSV con las 3 columnas y column_3
echo "Columna_0,Columna_1,Columna_2">$Output_file #Encabezado de nuevo csv
# Modificar el mismo archivo
echo "${column_3[0]}" > column_3.txt # Almacena el encabezado
for((i=1; i<$nLines; i++)); do # la linea 0 contiene los encabezados
     echo "${column_3[$i]}" >> column_3.txt
     echo "${column_0[$i]},${column_1[$i]},${column_2[$i]},${column_3[$i]}" >> $Output_file
done
paste -d "," $data_file column_3.txt > report.csv
echo "archivocreado correctamente $Output_file"



