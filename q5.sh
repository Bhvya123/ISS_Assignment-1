#!/bin/bash
read -p "Enter String :" st;
echo $st | rev;
echo $st | rev | tr "[a-z]Z[A-Z]" "[b-z]a[B-Z]";
lenst=${#st};
for ((i=$lenst/2 - 1;i>-1;i--))
do
printf '%c' "${st:$i:1}";
done
for ((i=$lenst/2;i<$lenst;i++))
do
printf '%c' "${st:$i:1}";
done
printf '\n';




