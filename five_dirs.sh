#!/bin/bash

mkdir five
cd five

for i in {1..5}
do

    mkdir "dir$i"
    cd "dir$i"

    for j in {1..4}
    do

	for ((k=1;k<=$j;k++))
	do

	    echo $j>>file$j
	done
	
    done

    cd ..
done


	
