#!/bin/bash

echo $(tail -7 synthetic_historical_fc_accuracy.tsv  | cut -f6) > scratch.txt

week_fc=($(echo $(cat scratch.txt)))

# validar resultado:
for i in {0..6}; do
    echo ${week_fc[$i]}
done

for i in {0..6}; do
  if [[ ${week_fc[$i]} < 0 ]]
  then
    week_fc[$i]=$(((-1)*week_fc[$i]))
  fi
  # validar resultado:
  echo ${week_fc[$i]}
done

minimum=${week_fc[1]}
maximum=${week_fc[1]}
for item in ${week_fc[@]}; do
   if [[ $minimum > $item ]]
   then
     minimum=$item
   fi
   if [[ $maximum < $item ]]
   then
     maximum=$item
   fi
done

echo "error absoluto mínimo = $minimum"
echo "error absoluto máximo = $maximum"