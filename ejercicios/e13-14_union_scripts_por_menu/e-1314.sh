#!/bin/bash

echo "Menú de Scripts"
echo "1. Ejecutar script1"
echo "2. Ejecutar script2"
echo "3. Salir"

read -p "Seleccione una opción: " opcion

if [ $opcion -eq 1 ]; then
    ./script1.sh  # Ejecutar el primer script
elif [ $opcion -eq 2 ]; then
    ./script2.sh  # Ejecutar el segundo script
elif [ $opcion -eq 3 ]; then
    echo "Saliendo del menú"
else
    echo "Opción no válida"
fi

