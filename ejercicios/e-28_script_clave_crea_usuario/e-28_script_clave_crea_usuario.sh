#!/bin/bash

#Verificación de archivo como argumento

if [ $# -ne 1 ]; then

	echo "Uso: $0 <nombre_del_archivo>"

	exit 1

fi

archivo="$1"

#Verificar que el archivo existe

if [ ! -f "$archivo" ]; then
	echo "El archivo $archivo no existe".
	exit 1
fi

#Leer el archivo linea a linea

while IFS= read -r linea; do
       echo "Linea leida: $linea"
done < "$archivo"

#Crear usuario

sudo adduser $nombre
passwd:

