#!/bin/bash
pattern="[01]{4}"
count=0 

for i in {1000..2000};
do 

    if  [[ $i =~ $pattern ]]; then

	count=$(($count+$i))

    fi

done

echo $count

