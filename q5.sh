#!/bin/bash
echo "Enter string:"
read string
length=${#string}
for((i=$length-1;i>=0;i--))
do
rev="$rev${string:$i:1}"
done
echo "The reversed string is: $rev"
echo $rev | tr 'A-Za-z' 'B-Za-zA'
for((i=$((length/2))-1;i>=0;i--))
do
halfrev="$halfrev${string:$i:1}"
done
for((i=$((length/2));i<$length;i++))
do
halfrev="$halfrev${string:$i:1}"
done
echo "The semi reversed string is: $halfrev"

