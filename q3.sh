#!/bin/bash
file=$1;
sizeoffile=$(wc -c < $file);
echo $sizeoffile;
numberoflines=$(ls -1q | wc -l < $file);
echo $numberoflines;
numberofwords=$(wc -w < $file);
echo $numberofwords;
count=0
while read line;
do
read -a words <<< $line;
let "count = count+1";
echo "Line No: $count - ${#words[*]}";
done < $file;
sed -e  's/[^A-Za-z]/ /g' $file | tr 'A-Z' 'a-z' | tr ' ' '\n' | grep -v '^$'| sort | uniq -c | sort -rn;


