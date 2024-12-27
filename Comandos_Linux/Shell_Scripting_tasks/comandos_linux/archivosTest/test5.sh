#! /bin/bash 
# initialize array, count, and sum
my_array=(1 2 3 4 5 6 7 8 9 10)
count=0
sum=0
length=${#my_array[@]}
for i in ${my_array[@]}; do
   # print the ith array element
     echo $i
   # increment the count by one
     count=$(($count+1))
   # add the current value of the array to the sum
     sum=$(($sum+$i))
done
echo "el tamaño del array es: $length"
echo $count
echo $sum
