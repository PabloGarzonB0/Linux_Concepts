#! /bin/bash

prev_fc=""
prev_temp=""
first=1

while read -r line; do
    year=$(echo $line | awk '{print $1}')
    month=$(echo $line | awk '{print $2}')
    day=$(echo $line | awk '{print $3}')
    obs_temp=$(echo $line | awk '{print $4}')
    fc_temp=$(echo $line | awk '{print $5}')

    # Solo califica si no es la primera línea
    if [ $first -eq 0 ]; then
        accuracy=$(($prev_fc - $obs_temp))

        if [ $accuracy -ge -1 ] && [ $accuracy -le 1 ]; then
            accuracy_range="excelente"
        elif [ $accuracy -ge -2 ] && [ $accuracy -le 2 ]; then
            accuracy_range="buena"
        elif [ $accuracy -ge -3 ] && [ $accuracy -le 3 ]; then
            accuracy_range="aceptable"
        else
            accuracy_range="pobre"
        fi

        echo -e "$year\t$month\t$day\t$obs_temp\t$prev_fc\t$accuracy\t$accuracy_range" >> historical_fc_accuracy.tsv
    fi

    prev_fc=$fc_temp
    prev_temp=$obs_temp
    first=0
done < rx_poc.log