#!/bin/bash
#Almacenar numeros enteros en variables

#num1=10
#num2=20

#Almacenar numeros enteros en parametros

num1=$1
num2=$2

#Comparar numeros y almacenar el mayor en nueva variable

if [ $num1 -gt $num2 ]; then
	mayor=$num1
else
	mayor=$num2
fi

#Mostrar el numero mayor

echo "El número mayor es: $mayor"
