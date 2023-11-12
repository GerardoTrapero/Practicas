#!/bin/bash
#Verificar nombre directorio como argumento

if [ $# -eq 0 ]; then
	echo "Dar nombre de directorio al argumento"
	exit 1
fi

#Obtener nombre directorio desde primer argumento

nombre_directorio="$1"

#Verificar si existe en directorio en /home

if [ -d "/home/$nombre_directorio" ]; then
	echo "Directorio ya existente en /home"
	exit 1
fi

#Crear directorio en /home

if [ $? -eq 0 ]; then
	echo "Directorio \"$nombre_directorio\" creado en /home"
else
	echo "Error al crear directorio \"$nombre_directorio\" en /home"
fi
