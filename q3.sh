#!/bin/bash
echo "Enter File Name"
read 
cat $REPLY | wc -c 
cat $REPLY | wc -l
cat $REPLY | wc -w
awk '{print"Line No: " NR "Count of Words: " NF}' $REPLY
cat $REPLY | sort | uniq -cd | awk '{"Word:" $2"Count of repetition:" $1}' 
