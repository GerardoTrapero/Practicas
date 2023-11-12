#!/bin/bash

raiz=/home/gerardotrapero/Documentos/ejercicios/

#Crear tantos directorios como parametro recibido

for (( i = 1; i <= $1; i++ )); do
	echo $i
	mkdir -p ${raiz}directorio$i

	#Crea directorios con ficheros de resultados de comandos
	
	mkdir -p ${raiz}directorio${i}/Documentos
        mkdir -p ${raiz}directorio${i}/Informes	
	
	#Crea ficheros vacios

	touch ${raiz}directorio${i}/Documentos/documentos.txt
	touch ${raiz}directorio${i}/Informes/informes.txt
	
	#Ejecuta comandos y añade informacion a ficheros creados

	ls -l ${raiz}directorio${i}/Documentos/ >> ${raiz}directorio${i}/Documentos/documentos.txt
	pwd ${raiz}directorio${i}/Informes/ >> ${raiz}directorio${i}/Informes/informes.txt

done


