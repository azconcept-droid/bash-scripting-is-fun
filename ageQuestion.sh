#!/bin/bash

# To illustrate comparison

read -p "How old are you? " age

if [ "$age" -gt 18 ]; then
	echo "You are an adult"
else
	echo "You are a child"
fi
