#!/bin/bash

if [ "$#" -le 0 ] 
then
	echo "Morate proslijediti bar jedan argument!"
	exit 1
fi

echo > arg.txt

for num in "$@"
do
	echo $num >> arg_ns.txt
done

sort -n arg_ns.txt > arg.txt; rm arg_ns.txt



