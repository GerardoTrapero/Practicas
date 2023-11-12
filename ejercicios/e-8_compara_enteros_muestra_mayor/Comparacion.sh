#!/bin/bash
echo "Meter 1º numero:"
read num1
echo "Meter 2º numero:"
read num2

if [ $num1 -gt $num2 ]; then
	echo "El mayor es ($num1)"
else
	if [ $num1 -lt $num2 ]; then
		echo "El mayor es (num2)"
	fi
fi
