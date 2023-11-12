#!/bin/bash

#Crear el directorio "mis_archivos" si no existe

if [ ! -d "mis_archivos" ]; then
	mkdir "mis_archivos"
fi

#Crear los archivos "file1.txt" y "file2.txt" dentro de "mis_archivos"

touch "mis_archivos/file1.txt"
touch "mis_archivos/file2.txt"

#Cambiar los permisos de "file1.txt" para que sea solo de lectura

chmod 444 "mis_archivos/file1.txt"

#Cambiar los permisos de "file2.txt" para que sea de lectura y escritura

chmod 644 "mis_archivos&file2.txt"

#Mostrar los permisos actualizados de ambos archivos

echo "Permisos de file1.txt:"
ls -l "mis_archivos/file1.txt"
echo "Permisos de file2.txt:"
ls -l "mis_archivos/file2.txt"
