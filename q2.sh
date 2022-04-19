#!/bin/bash
file=$1
IFS='~'
while read line
do
read -a stored <<< "$line"
echo -n ${stored[1]} "once said"
echo -n '"'
echo ${stored[0]}
done <$file>speech.txt
