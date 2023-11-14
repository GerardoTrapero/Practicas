#!/bin/bash

while true
do
	echo "Inserta 1 para el ejercicio 13"
	echo "Inserta 2 para el ejercicio 14"
	echo "Inserta 3 para salir"
	read opcion
	case "$opcion" in
		1)
			echo "Inserta el primer numero"
			read n1
			echo "Inserta el segundo numero"
			read n2

			if [ $n1 -le $n2 ]; then
					for ((i=$n1; i<=$n2; i++)); do
						echo $i
					done
			else
					# Bucle para mostrar los números en orden descendente
					for ((i=$n1; i>=$n2; i--)); do
						echo $i
					done
			fi
			;;
		2)
			echo "Inserta la ruta de un directorio"
			read directorio
			echo "Inserta una cadena para buscar en los ficheros txt del directorio"
			read cadena_a_buscar

			archivos_txt=$(find "$directorio" -type f -name "*.txt")

			for archivo in $archivos_txt; do
				if grep -q "$cadena_a_buscar" "$archivo"; then
					echo "Cadena encontrada en el archivo: $archivo"
					grep "$cadena_a_buscar" "$archivo"
					echo "----------------------------------------"
				fi
			done
			;;
		3)
			echo "Hasta pronto"
			exit 0
			;;
		*)
			echo "Opcion incorrecta"
			;;

	esac

done
