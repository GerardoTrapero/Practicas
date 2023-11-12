#!/bin/bash
#Imprimir numeros del 1 al 10 con bucle while
echo "Números del 1 al 10:"
i=1
while [ $i -le 10 ]; do
	echo $i
	i=$((i+1))
done
#Linea para separar resultados 
echo
#Imprimir numeros del 10 al 1 con bucle While
echo "Números del 10 al 1:"
i=10
while [ $i -ge 1 ]; do
	echo $i
	i=$((i-1))
done
