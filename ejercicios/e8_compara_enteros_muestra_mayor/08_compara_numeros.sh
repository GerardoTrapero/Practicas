#!/bin/bash

# Lee las 2 varibles enteras desde la entrada estandard
echo "introduce el primer número: "
read num1
echo "introduce el segundo número: "
read num2

#Compara las variables y muestra el resultado

if [ $num1 -gt $num2 ]; then
	echo " El primer número ($num1) es mayor que el segundo número ($num2) "
elif [ $num2 -gt $num1 ]; then
	echo "El segundo número ($num2) es mayor que el primer número ($num1)"
else
	echo "Ambos números son iguales: ($num1)"
fi
