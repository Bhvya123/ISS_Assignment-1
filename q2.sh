#!/bin/bash
file=$1;
IFS='~';
while read line;
do
read -a arr <<< $line;
#echo ${arr[1]};
echo "${arr[1]} once said, \"${arr[0]}\" ";
done < $file > speech.txt
