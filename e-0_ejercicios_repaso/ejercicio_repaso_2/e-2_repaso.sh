#!/bin/bash

#A partir de una ruta y un nombre de directorio, crear el directorio en la ruta, si se puede (debes hacerlo con variables, read y parámetros)

#--------------------------------------------------------------------------------------

# Solicitar la ruta donde se creará el directorio por read
#read -p "Por favor, introduce la ruta donde quieres crear el directorio: " ruta

#¡# Solicitar el nombre del directorio por read
#read -p "Introduce el nombre del directorio que deseas crear: " nombre_directorio

#---------------------------------------------------------------------------------------

#Solicitar el nombre del directorio por variables
ruta="/home/gerardotrapero/Documentos/ejercicios/ejercicios_repaso"

#Solicitar el nomnre del directorio por variables

nombre_directorio="ejercicio_repaso_2"

#-------------------------------------------------------------------------------------

#Verificar si hay nombre como parametros

if [ $# -eq 0 ]; then
	echo "Por favor, introducir una ruta y nombre de directorio como parametros"
	exit 1
fi	

#Solicitar la ruta y el nombre del directorio por parámetros

ruta=$1
nombre_directorio=$2

# Comprobar si la ruta es válida
if [ -d "$ruta" ]; then

# Crear el directorio en la ruta especificada
    if mkdir -p "$ruta/$nombre_directorio"; then
        echo "El directorio '$nombre_directorio' se ha creado en '$ruta'."
    else
        echo "No se pudo crear el directorio '$nombre_directorio' en '$ruta'."
    fi
else
    echo "La ruta '$ruta' no es válida o no existe."
fi

