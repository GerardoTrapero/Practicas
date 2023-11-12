#!/bin/bash

echo 1.1. Crear el directorio "practica_admin" en directorio de inicio
echo
	mkdir ~/practica_admin
echo "Comprobación:"
	cd ~/
	ls -l
echo
echo 1.2. Acceder al directorio "practica_admin" y crear los subdirectorios
	cd ~/practica_admin
	mkdir documentos fotos backups
echo
echo "Comprobación:"
	ls -l
echo
echo 1.3. Establece permisos para que solo el propietario pueda modificar los subdirectorios
	chmod 755 documentos
	chmod 755 fotos
	chmod 755 backups
echo
echo "Comprobacion:"
	ls -l
echo
echo 2.1. En el directorio "documentos", crea el archivo "notas.txt" y agrega notas personales
	cd documentos
	echo "Estas son mis notas personales..." > notas.txt
echo
echo "Comprobación:"
echo
	cat notas.txt
echo
echo 2.2 En el directorio "fotos", crear el archivo "album.txt" y cambiar permisos para que solo el propietario pueda leer y escribir en él.
	cd ../fotos
	touch album.txt
	chmod 711 album.txt
echo
echo "Comprobación:"
	ls -l 
echo
echo 2.3. Mover el archivo "album.txt" al directorio "backups" con cambio de nombre, añadir fecha y extensión .bak
	mv album.txt ../backups
	cd ../backups
	mv album.txt $(date +"%d\%m\%Y").bak
echo
echo "Comprobación:"
	cd ~/backups
	ls -l
echo
echo 2.4. Copiar el archivo "notas.txt" en directorio backups y  cambiar de nombre a notas_personales.txt
echo
	cp ../documentos/notas.txt ../backups/notas_personales.txt
echo "Comprobacion:"
	ls -l
echo
echo 2.5. Listar todos los archivos con la extensión .bak del directorio backups
echo	
	cd ../backups
	ls *.bak
echo
echo 4.1. Eliminar el archivo "notas.txt" del directorio documentos
	rm ~/practica_admin/documentos/notas.txt
echo 
echo "Comprobación:"
	cd ../documentos
	pwd
	ls -l
echo	
echo 4.2. Borra el directorio "fotos" y su contenido en su totalidad
	rm -r ~/practica_admin/fotos
echo
echo "Comprobación:"
	cd ../
	pwd
	ls -l
echo
echo "-----------------------------------------------------------------------------"
echo "-----------------------------------------------------------------------------"
echo 3.1. Buscar y mostrar todos los archivos del sistema con la extensión .txt
echo
echo    	 find / -type f -name "*.txt"
echo
echo 3.2. Encontrar todos los archivos del que contengan la palabra "importante"
echo
echo		grep -rl "importante" /
echo
echo 4.3. Mostrar todos los archivos y directorios en el directorio home modificados en los últimos 30 días
echo
echo		find ~/ -type f -mtime -30 	
echo		find ~/ -type d -mtime -30
echo 
echo "FIN"



