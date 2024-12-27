#! /bin/sh


#Asignacion de  la ciudad a una variable
city=Casablanca

#Obtener el reporte del clima actulizado
curl -s wttr.in/$city?T --output weather_report

#Extraer variables obs_temp y fc_temp
obs_temp=$(curl -s wttr.in/$city?T | grep -m 1 °. | grep -Eo -e -?[[:digit:]].*)
echo "The current temperature of $city: $obs_temp"


fc_temp=$(curl -s wttr.in/$city?T | head -23 | tail -1 | grep '°.' | cut -d C -f2 | grep -Eo -e -?[[:digit:]].*)
echo "The forecasted temperature for noon tomorrow for $city : ${fc_temp}C"

#Registro de fecha de Marroco - casablanca
TZ='Morocco/Casablanca'

hour=$(TZ='Morocco/Casablanca' date -u +%H)
day=$(TZ='Morocco/Casablanca' date -u +%d)
month=$(TZ='Morocco/Casablanca' date -u +%m)
year=$(TZ='Morocco/Casablanca' date -u +%Y)

#Cargar  el registro en archivo .log
record=$(echo -e "$year\t$month\t$day\t$obs_temp\t${fc_temp}C")
echo $record>>rx_poc.log
