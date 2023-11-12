#!/bin/bash

# Verifica que se haya proporcionado un nombre como argumento
if [ $# -eq 0 ]; then
  echo "Debes proporcionar un nombre como argumento."
  exit 1
fi

# Obtiene el nombre del directorio a crear a partir del primer argumento
nombre_directorio="$1"

# Obtiene la ruta completa al directorio "home" del usuario actual
directorio_home="$HOME"

# Combina la ruta del directorio "home" con el nombre proporcionado para el nuevo directorio
ruta_completa="$directorio_home/$nombre_directorio"

# Verifica si el directorio ya existe
if [ -d "$ruta_completa" ]; then
  echo "El directorio '$ruta_completa' ya existe."
  exit 1
fi

# Crea el directorio
mkdir "$ruta_completa"

echo "Directorio '$nombre_directorio' creado en $ruta_completa."
