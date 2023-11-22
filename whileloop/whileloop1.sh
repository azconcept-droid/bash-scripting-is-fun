#!/bin/bash

# While Loop illustration

counter=1

while [ $counter -le 5 ]
do
	echo $counter
	((counter++))
	sleep 1
done
