#!/bin/bash

# Check if you eligible for certificate

if [ "$1" -ge 70 ] && [ "$2" -ge 80 ] && [ "$3" -ge 4 ]; then
	echo "You are eligible for Certificate"
else
	echo "You are not eligible for Certificate"
fi

