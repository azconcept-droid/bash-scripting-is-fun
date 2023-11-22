#!/bin/bash
# Calculator app

read -p "Enter the first numbe: " num1
read -p "Enter the second number: " num2

echo "Sum is: $((num1 + num2))"
echo "Sub is $((num1 - num2))"
echo "Multipilcation is: $((num1 * num2))"
echo "Division is: $((num1 / num2))"
echo "Remainder is: $((num1 % num2))"
