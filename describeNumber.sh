#!/bin/bash

# CASE Illustration

read -p "Enter a number between 1 and 3: " num

case $num in
	1) echo "THis ia the number 1" ;;
	2) echo "THis is number 2" ;;
	3) echo "This is number 3" ;;
	*) echo "This is not one of our numbers" ;;
esac
