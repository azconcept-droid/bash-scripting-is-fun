#!/bin/bash

# Print the squares of the numbers from 1 to 10

counter=1

while [ $counter -le 10 ];
do
	echo $((counter ** 2))
	((counter++))
	sleep 1
done
