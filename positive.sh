#!/bin/bash

# Compare a number

read -p "Enter a number: " number

if [ $number -ge 0 ]; then
	echo "This number is positive"
else
	echo "This number is negative"
fi
