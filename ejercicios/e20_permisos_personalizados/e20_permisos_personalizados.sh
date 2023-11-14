#!/bin/bash
 if [ "$#" -ne 4 ]; then
	echo "Uso: $0 <nombre_de_archivo> <permisos_propietario> <permisos_grupo> <permisos_otros>"
	echo "Ejemplo: $0 nombre.txt rwx rw r"
	exit 1
 fi
 nombre_archivo="$1"
 permisos_propietario="$2"
 permisos_grupo="$3"
 permisos_otros="$4"

 #Verificar si el archivo ya existe

 if [ -e "$nombre_archivo" ]; then
	echo "El archivo $nombre_archivo ya existe. NO puede sobrescribir"
	exit 1
 fi

 #Crear archivo

 touch "$nombre_archivo"
 ls -l "$nombre_arhivo"

 #Asignar permisos

 chmod u=${permisos_propietario},g={permisos_grupo},o={permisos_otros} "$nombre_archivo"

 echo "Archivo $nombre_archivo creado con permisos: "
 echo "Propietario: $permisos_propietario"
 echo "Grupo: $permisos_grupo"
 echo "Otros: $permisos_otros"
 
