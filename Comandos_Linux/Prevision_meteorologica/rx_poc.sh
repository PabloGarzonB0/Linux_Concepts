#! /bin/bash
 
#Asignar el nombre de la ciudad como Casablanca
city=Casablanca

#Obtener el informe del clima para Casablanca
curl -s wttr.in/$city?T --output weather_report

#Para extraer la temperatura actual
obs_temp=$(curl -s wttr.in/$city?T | grep -m 1 '°.' | grep -Eo -- '-?[[:digit:]].*')
echo "La temperatura actual de $city: $obs_temp"

# Para extraer la temperatura pronosticada para el mediodía de mañana en °C
fc_temp=$(curl -s wttr.in/$city?T | head -23 | tail -1 | grep -Eo -- '-?[0-9]+(?=°C)')
echo "La temperatura pronosticada para el mediodía de mañana para $city : $fc_temp°C"

#Asignar País y Ciudad a la variable TZ
TZ='Morocco/Casablanca'


# Usar sustitución de comando para almacenar el día, mes y año actuales en las variables de shell correspondientes:
day=$(TZ='Morocco/Casablanca' date -u +%d)
month=$(TZ='Morocco/Casablanca' date +%m)
year=$(TZ='Morocco/Casablanca' date +%Y)


# Registrar el clima
record=$(echo -e "$year\t$month\t$day\t$obs_temp\t$fc_temp C")
echo $record>>rx_poc.log