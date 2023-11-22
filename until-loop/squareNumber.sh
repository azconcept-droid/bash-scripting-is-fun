#!/bin/bash

# Prints square of a number

counter=10

until [ $counter -gt 20 ];
do
	echo $((counter ** 2))
	((counter++))
	sleep 1
done
