#!/bin/bash

# Prints square of a number

for number in {10..20};
do
	echo $((number ** 2))
	sleep 1
done
