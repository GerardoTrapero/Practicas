#!/bin/bash
# Definir variables

	directorio="ruta/al/directorio"
	cadena_a_buscar="texto_a_buscar"

# Buscar en todos los archivos con extension "txt"
	
	archivo.txt=$(find "$directorio" -type f -name ".txt"

# Recorre resultados hasta que grep encuentra la cadena y la muestra en el terminal

	for archivo in $archivos.txt; do
		if grep -q "$cadena_a_buscar" "$archivo"; then
			echo "Cadena_a_buscar" "$archivo"
			echo "--------------------------------"
		fi
	done

