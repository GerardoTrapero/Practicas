#!/bin/bash

#Verificación de archivo como argumento

	if [ $# -ne 1 ]; then

		echo "Uso: $0 <archivo>"
		exit 1
	fi

	archivo="$1"

#Verificar que el archivo existe

	if [ ! -f "$archivo" ]; then
	
		echo "El archivo $archivo no existe".
		exit 1
	fi

#Leer el nombre de usuario y clave desde el archivo linea a linea

#while IFS= read -r linea; do
#       echo "Linea leida: $linea"
#done < "$archivo"

	usuario = $(head -n 1 "$archivo")
	clave = $(tail -n 1 "$archivo")

#Verificar si el usuario ya existe

	if id "$usuario" &>/dev/null ; then
		echo "El usuario $usuario ya existe"
		exit 1
	fi

#Crear usuario

	sudo useradd -m -p $(openssl passwd -1 "clave") "$usuario"

	echo "Usuario $usuario creado con exito"


