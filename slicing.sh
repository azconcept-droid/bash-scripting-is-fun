#!/bin/bash

# Slicing example

name="Azeez Yahaya"
echo "This is the full name: $name"

fname=${name:0:5}

echo "This is the first name $fname"
