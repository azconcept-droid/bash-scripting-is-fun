#!/bin/bash

# Display age details using ELIF illustration

read -p "How old are you? " age

if [ $age -ge 70 ]; then
	echo "This is the evening of life"
elif [ $age -ge 50 ]; then
	echo "This is when you should mentor others"
elif [ $age -ge 18 ]; then
	echo "These are the hustling years"
else
	echo "These are the learning years"
fi
