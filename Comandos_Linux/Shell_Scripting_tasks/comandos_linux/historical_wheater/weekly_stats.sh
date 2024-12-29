#! /bin/sh

# Script para ver datos de synthetic_historical_accuracy
echo $(tail -8 synthetic_historical_fc_accuracy.tsv | cut -f6) > scratch.txt # No sobreescribe la informacion

week_fc=($(echo $(cat scratch.txt))) # Creacion de nueva arreglo
# Validacion de resultados
for i in {0..7}; do
    echo ${week_fc[$i]}
done
for i in {0..7}; do
    if [[ ${week_fc[$i]} -lt 0 ]]
    then
       week_fc[$i]=$(((-1)*week_fc[$i]))
    fi
    # validacion de resultados
    echo -n  ${week_fc[$i]}
done

# guardado de minimo y maximo
minimum=${week_fc[1]}
maximum=${week_fc[1]}

for item in ${week_fc[@]}; do 
  if [[ $item < $minimum ]]
  then 
         minimum=$item  #Para asignacion de variables no utilizar $
  fi
  if [[ $item > $maximum ]]
  then 
         maximum=$item
  fi
done
echo "";
echo "Minimum absolute error = $minimum"
echo "Maximum absolute error = $maximum"