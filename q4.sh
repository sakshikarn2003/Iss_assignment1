#!/bin/bash
declare -a array
IFS=','
echo "Enter Number:"
read -a array
for((i=0;i<${#array[*]};i++))
do
for((j=$i;j<${#array[*]};j++))
do
if [ ${array[$i]} -ge ${array[$j]} ]
then
temp=${array[$i]}
array[$i]=${array[$j]}
array[$j]=$temp
fi
done
done
echo "The sorted array is:"
for((i=0;i<${#array[*]};i++))
do
echo -n ${array[i]}
echo -n " "
done

