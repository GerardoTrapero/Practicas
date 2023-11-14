#!/bin/bash

#Unir la ejecucion de dos ejercicios, 13 y 14 en un script
echo "Introducir por pantalla la opción deseada"
echo "13. Listar numeros (teclear 13)"
echo "14. Buscar cadena en una lista de ficheros (teclear 14)"

read opcion

if [ $opcion == "13" ]; then
	echo "Inserta el primer numero"
	read n1
	echo "Inserta el segundo numero"
	read n2

	if [ $n1 -le $n2 ]; then
		echo "entro por $n1 es menor que $n2"
		for (( i=$n1; i<=$n2; i++)); do
			echo $i
		done
	else
		echo "entro por $n1 es mayor que $n2"
		for ((i=$n1; i>=$n2; i--)); do
			echo $i
		done
	fi
else
       if [ $opcion == "14" ]; then
	
	echo "Inserta la ruta del directorio"
	read directorio
	echo "Inserta la cadena a buscar"
	read cadena_a_buscar

	archivos_txt=$(find "$directorio" -type f -name "*.txt")

	for archivo in $archivos_txt; do
		if grep -q "$cadena_a_buscar" "$archivo"; then
			echo "Cadena encontrada en el archivo: $archivo"
			grep "$cadena_a_buscar" "$archivo"
			echo"------------------------------------------"
		fi
	done	
	fi
fi

#!/bin/bash

# Verificar si se proporciona al menos un parámetro
#if [ $# -lt 1 ]; then
#  echo "Uso: $0 [1 <ruta_del_directorio> | 2 <nombre_del_fichero>]"
#  exit 1
#fi

# Obtener el primer parámetro
opcion="$1"

# Realizar acciones basadas en la opción
#case "$opcion" in
#  1)
    # Verificar si se proporcionó una ruta como segundo parámetro
#    if [ $# -lt 2 ]; then
#      echo "Debes proporcionar una ruta de directorio como segundo parámetro."
#      exit 1
#    fi

    # Obtener la ruta del directorio del segundo parámetro
#    ruta="$2"

    # Verificar si la ruta es un directorio
#    if [ -d "$ruta" ]; then
      # Mostrar el listado de archivos en el directorio
#      ls "$ruta"
#    else
#      echo "La ruta proporcionada no es un directorio válido."
#      exit 1
#    fi
#    ;;
#  2)
    # Verificar si se proporcionó un nombre de fichero como segundo parámetro
#    if [ $# -lt 2 ]; then
#      echo "Debes proporcionar un nombre de fichero como segundo parámetro."
#      exit 1
#    fi

    # Obtener el nombre del fichero del segundo parámetro
#    fichero="$2"

    # Verificar si el fichero existe
#    if [ -f "$fichero" ]; then
      # Mostrar el contenido del fichero
#      cat "$fichero"
#    else
#      echo "El fichero proporcionado no existe."
#      exit 1
#    fi
#    ;;
#  *)
#    echo "Opción no válida. Debes usar '1' para mostrar el ls de un directorio o '2' para mostrar el cat de un fichero."
#    exit 1
#    ;;
#esac


#-------------------------------------------------------
##!/bin/bash
# Definir variables
#
#	directorio="ruta/al/directorio"
#	cadena_a_buscar="texto_a_buscar"
#
# Buscar en todos los archivos con extension "txt"
#
#	archivo.txt=$(find "$directorio" -type f -name ".txt"
#
# Recorre resultados hasta que grep encuentra la cadena y la muestra en el terminal
#
#	for archivo in $archivos.txt; do
#		if grep -q "$cadena_a_buscar" "$archivo"; then
#			echo "Cadena_a_buscar" "$archivo"
#			echo "--------------------------------"
#		fi
#	done
