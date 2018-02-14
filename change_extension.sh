#!/bin/bash

mkdir png
mkdir jpg

for i in *; do
       if [[ $i == *.pdf ]]; then
	mv $i /home/dobhal/Desktop/OS_Day1/png
	#echo $i    
	#mv $i ${i/.$1/.$2}
    fi
done
