#!/bin/bash

read -p "Enter values:" file
IFS=',' read -a arr <<< $file

n=${#arr[*]};
for ((i=0;i<$n;i++))
do
for ((j=$i;j<$n;j++))
do
if [ ${arr[$i]} -gt ${arr[$j]} ]; then
temp=${arr[$i]};
arr[$i]=${arr[$j]};
arr[$j]=$temp;
fi
done
done

echo ${arr[*]};
