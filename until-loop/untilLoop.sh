#!/bin/bash

# Until loop illustration

counter=1

until [ $counter -gt 5 ]
do
	echo $counter
	((counter++))
	sleep 2
done
