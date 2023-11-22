#!/bin/bash

echo "################# WELCOME ##############"; echo ""

echo "This app check if a number is even or odd"; echo ""

read -p "Enter the number: " number

modulo=$((number % 2))
if [ $modulo == 0 ]; then
	echo "This is an even number"
else
	echo "This is an odd number"
fi
