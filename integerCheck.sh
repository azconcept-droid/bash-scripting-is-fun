#!/bin/bash

# Check if a number is +, - or 0
echo "############## WELCOME ###############"; echo " "

echo "This app check if a number is +, - or 0"; echo " "

read -p "Enter your number: " number

echo ""

if [ $number -gt 0 ]; then
	echo "This number is positive"
elif [ $number -lt 0 ]; then
	echo "This number is negative"
else
	echo "This number neither positve nor negative"
fi
