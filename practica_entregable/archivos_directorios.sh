#!/bin/bash

echo 1.1. Crear el directorio "practica_admin" en directorio de inicio

	mkdir ~/practica_admin

echo 1.2. Acceder al directorio "practica_admin" y crear los subdirectorios

	cd ~/practica_admin

	mkdir documentos fotos backups

echo 1.3. Establece permisos para que solo el propietario pueda modificar los subdirectorios
	
	chmod 700 documentos
	chmod 700 fotos
	chmod 700 backups

echo "-----------------------------------------------------------------------------------"
echo
echo 2.1. En el directorio "documentos", crea el archivo "notas.txt" y agrega notas personales

	cd documentos
	
	echo "Estas son mis notas personales..." > notas.txt

echo 2.2 En el directorio "fotos", crear el archivo "album.txt" y cambiar permisos
	
	cd ../fotos
	touch album.txt
	chmod 600 album.txt

echo 2.3. Mover el archivo "album.txt" al directorio "backups" con cambio de nombre, añadir fecha y extensión .bak

	mv album.txt ../backups/$(date +"%d%m%Y").bak

echo 2.4. Copiar el archivo "notas.txt" en directorio backups y  cambiar de nombre a notas_personales.txt

	cp ../documentos/notas.txt ../backups/notas_personales.txt

echo 2.5. Listar todos los archivos con la extensión .bak del directorio backups
	
	cd ../backups
	ls *.bak

#echo "----------------------------------------------------------------------------------------------"
#echo
#echo 3.1. Buscar y mostrar todos los archivos del sistema con la extensión .txt

#	find / -type f -name "*.txt"

#echo 3.2. Encontrar todos los archivos del que contengan la palabra "importante"

#	grep -rl "importante" / 2>/dev/null

echo "----------------------------------------------------------------------------------------------"
echo
echo 4.1. Eliminar el archivo "notas.txt" del directorio documentos

	rm ~/practica_admin/documentos/notas.txt

echo 4.2. Borra el directorio "fotos" y su contenido en su totalidad
	
	rm -r ~/practica_admin/fotos

#echo 4.3. Mostrar todos los archivos y directorios en el directorio home modificados en los últimos 30 días

#	find ~/ -type f -mtime -30 -o -type d -mtime -30
echo "-----------------------------------------------------------------------"
cd ..
pwd
tree
echo
echo "FIN"


