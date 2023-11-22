#!/bin/bash

# This script check if you are eligible to vote

echo "############### WELCOME ####################"; echo ""

echo "This app check if you are eligible to vote"; echo ""

read -p "How old are you? :" age

if [ "$age" -ge 18 ]; then
	echo "Hurray!, you are eligible to vote"
else
	echo "Oops!, you are not eligible to vote"
fi
