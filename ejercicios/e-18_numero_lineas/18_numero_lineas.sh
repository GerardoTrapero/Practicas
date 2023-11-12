#!/bin/bash

#Buscar archivos con extension ".txt" en el directorio actual

files_txt=$(find . -type f -name "*.txt")

#Mostrar una lista de los archivos encontrados

echo "Archivos con extension .txt en el directorio actual:"
echo "$files_txt"

#Usar un bucle FOR para contar las lineas de cada archivo y el numero total de lineas

total_lineas=0

for archivo in $files_txt; do
	num_lineas=$(wc -l < "$archivo")
	echo "Número de lineas en $archivo: $num_lineas"
	total_lineas=$((total_lineas + num_lineas))
done

#Mostrar numero total de lineas en todos los archivos

echo "Numero total de lineas de los archivos .txt: $total_lineas"
