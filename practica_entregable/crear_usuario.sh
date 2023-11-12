#!/bin/bash

# 5. Crear un script de shell, llamado "crear_usuario.sh", con el siguiente contenido:

# 5.1 Comprobar que se hanE dado los 3 argumentos necesarios

        if [ $# -ne 3 ]; then
                echo "Uso: $0 <nombre_de_usuario> <nombre_de_directorio> <nombre_de_fichero>"
                exit 1
        fi
echo "argumentos adquiridos"
echo
# 5.2. Obtener los argumentos pasandolos a variables

        nombre_usuario="$1"
        nombre_directorio="$2"
        nombre_fichero="$3"
echo "argumentos pasados a variables $1 $2 $3"
echo
# 5.3. Crea el usuario con el valor de la variable

        sudo useradd "$nombre_usuario"
echo "usuario creado: $nombre_usuario"
echo
# 5.4. Crear el directorio con el nombre de la variable y cambiar el propietario con chown

        sudo mkdir -p "$nombre_directorio"
echo "directorio creado: $nombre_directorio"
echo
        sudo chown "$nombre_usuario" "$nombre_directorio"
echo "cambiado el propietario del directorio $nombre_directorio al usuario especificado en la variable $nombre_usuario"
echo
# 5.5. Crear el fichero dentro del directorio creado

        sudo -u "$nombre_usuario" touch "$nombre_directorio/$nombre_fichero"
echo "creado el fichero dentro del directorio: $nombre_fichero"
echo
# 5.6. Muestra los permisos del directorio
echo "permisos del directorio"
echo
	ls -ld "$nombre_directorio"


# ./crear_usuario.sh usuario_ejemplo directorio_ejemplo archivo_ejemplo


