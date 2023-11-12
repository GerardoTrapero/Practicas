#!/bin/bash
#Verificar el paramentro es valido

if [ "$#" -ne 1 ] || ! [[ $1 =~ ^[1-5]$ ]]; then
	echo "Escribir un numero entre 1 y 5"
	exit 1
fi

#Obtener el numero del parametro

numero="$1"

#Llegar desde el 1 hasta el numero dado

for i in $(seq 1 "$numero"); do

#Crear un archivo con el nombre del numero

	touch "$i"
	echo "Archivo $i creado"
done
	echo "Se han creado $numero archivos con exito"
