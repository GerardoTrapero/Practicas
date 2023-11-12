#!/bin/bash

# Verifica si se proporciona un nombre de directorio como parámetro
if [ $# -eq 0 ]; then
    echo "Por favor, proporciona un nombre de directorio como parámetro."
    exit 1
fi

# Obtén el nombre de directorio proporcionado como parámetro
nombre_directorio="$1"

# Ruta completa del directorio en /home
ruta_directorio="/home/GerardoTrapero/Documentos/ejercicios/e-9/Directorios_9/$nombre_directorio"

# Verifica si el directorio ya existe
if [ -d "$ruta_directorio" ]; then
    echo "El directorio \"$nombre_directorio\" ya existe en /ejercicios."
else
    # Crea el directorio en /home
    mkdir "$ruta_directorio"
    echo "Se ha creado el directorio \"$nombre_directorio\" en /ejercicios."
fi

