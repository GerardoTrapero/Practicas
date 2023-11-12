#!/bin/bash

# Diseñar un scrip que haga lo siguiente
#	1. Crea directorio llamado "mis_archivos"
#	2. Dentro crea dos ficheros llamados "archivo1.txt" y archivo2.txt
#	3. Cambia permisos de solo lectura a "archivo1.txt"
#	4. Cambia permisos de solo lectura y escritura a "archivos2.txt"
#	5. Muestra permisos actualizados de ambos ficheros 
#
# Con validaciones

# Crear directorio y archivos

	directorio="mis_archivos"
	archivo1="archivo1.txt"
	archivo2="archivo2.txt"

# 1.Verificar si directorio "mis_archivos" existe

	if [ -d "$directorio" ] ; then
		echo "El directorio $directorio ya existe"
	else
	# Si no existe, crear directorio
	mkdir="$directorio"
		echo="Se ha creado el directorio $directorio"
	fi
# 2. Verificar si "archivo1.txt " ya existe en directorio
	
	if [ -e "$/directorio/$archivo1 ] ; then
		echo "El archivo $archivo1 ya existe en $directorio."
	else
	# Si no existe, crea el archivo y cambia los permisos de lectura
	
	touch "$directorio/$archivo1"
	chmod 444 "$directorio/$archivo1"
	echo "Se ha creado $archivo1 con permiso de solo lectura en $directorio"
	
	fi

# 3. Verifica si "archivo2.txt" ya existe en directorio

	if [ -e "$/directorio/$archivo2" ] ; then
                echo "El archivo $archivo2 ya existe en $directorio."
        else
        # Si no existe, crea el archivo y cambia los permisos de lectura y escritura
	touch "$directorio/$archivo2"
        chmod 644 "$directorio/$archivo2"
        echo "Se ha creado $archivo2 con permiso de lectura y escritura en $directorio"
	fi

# 4. Muestra permisos actualizados

	echo "Permisos de $archivo1, $(ll "$directorio/$archivo1")"
	echo "Permisos de $archivo2, $(ll "$direcorio/$archivo2")"

