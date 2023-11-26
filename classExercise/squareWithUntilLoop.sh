#!/bin/bash

# Print the sum of the numbers from 1 to 100 uding util loop

counter=1

sum=0

until [ $counter -gt 100 ];
do
	sum=$((sum + counter))
	((counter++))
done

# Print the sum of the numbers
echo $sum
