#!/bin/bash

echo "# 5. Crear un script de shell, llamado "crear_usuario.sh", con el siguiente contenido:"
echo "-----------------------------------------------------------------------------"
echo
echo "# ./crear_usuario.sh usuario_ejemplo directorio_ejemplo archivo_ejemplo "
echo
echo "------------------------------------------------------------------------"
echo
echo "# 5.1 Comprobar que se han dado los 3 argumentos necesarios"
echo
	if [ $# -ne 3 ]; then
                echo "Uso: $0 <nombre_de_usuario> <nombre_de_directorio> <nombre_de_fichero>"
                exit 1
        fi
	echo "argumentos ya introducidos"
echo "---------------------------------------------------------------------------------------"
echo
echo "# 5.2. Obtener los argumentos pasandolos a variables"
echo
	nombre_usuario=$1
        nombre_directorio=$2
        nombre_fichero=$3
	echo	 "argumentos ya pasados a variables: $1, $2, $3"
echo "---------------------------------------------------------------------------------------"
echo
echo "# 5.3. Crea el usuario con el valor de la variable"
echo
	sudo useradd $nombre_usuario
	echo	 "usuario creado: $nombre_usuario"
echo "----------------------------------------------------------------------------------------"
echo
echo "# 5.4. Crear el directorio con el nombre de la variable y cambiar el propietario con chown"
echo
        sudo mkdir -p $nombre_directorio
	echo "directorio creado: $nombre_directorio"
echo
        sudo chown $nombre_usuario:$nombre_usuario $nombre_directorio
	
	echo "crea un directorio con el nombre de directorio dado: $nombre_directorio y cambia propietario al nuevo usuario: $nombre_usuario"
echo "--------------------------------------------------------------------------------------------------------------------------"
echo
echo " # 5.5. Crear el fichero dentro del directorio creado"
echo
        sudo touch $nombre_directorio/$nombre_fichero
	echo "creado el fichero dentro del directorio: $nombre_fichero"
echo "-----------------------------------------------------------------------------------------------"
echo
echo "# 5.6. Muestra los permisos del directorio"
echo
	echo "permisos del directorio:"
echo
	ls -ld $nombre_directorio




