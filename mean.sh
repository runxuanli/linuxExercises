#!/bin/bash
if [[ $# -eq 0 ]]; then
    echo "usage: $0 <column> [file.csv]" 1>&2 
    exit 0
fi
tail +2 $2 > temp.csv
sum=0
list=$(cut -d "," -f $1 temp.csv)
for i in $list; do
    sum=$(echo "$sum+$i" | bc)
done
num=${#list}
mean=$(echo "scale=2;$sum/$num" | bc)
echo $mean
rm temp.csv
