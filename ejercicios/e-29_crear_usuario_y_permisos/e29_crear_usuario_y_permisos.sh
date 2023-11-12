#!/bin/bash
# Crear un script que a partir de un fichero con una línea con un nombre de usuario, otra con la contraseña y una tercera con una ruta.
# Aplique permisos de lectura, escritura y ejecución al propietario, lectura al grupo y lectura a otros, cree al usuario y de permisos en la ruta.
#
# Verificar si se proporciona el archivo como argumento
if [ $# -ne 1 ]; then
  echo "Uso: $0 <archivo_de_credenciales>"
  exit 1
fi
	credentials_file="$1"

# Verificar si el archivo de credenciales existe
if [ ! -f "$credentials_file" ]; then
  echo "El archivo de credenciales no existe."
  exit 1
fi
#
# Leer el archivo de credenciales
read -r username < "$credentials_file"
read -r password < "$credentials_file"
read -r path < "$credentials_file"
#
# Comprobar si el nombre de usuario ya existe
if id "$username" &>/dev/null; then
  echo "El nombre de usuario $username ya existe."
  exit 1
fi
#
# Crear el usuario con los valores leídos del archivo
useradd -m -c "Usuario creado a partir de archivo" "$username"
#
# Establecer la contraseña del usuario
echo "$username:$password" | chpasswd
#
# Aplicar permisos a la ruta
chmod 700 "$path"
#
# Mostrar un mensaje de confirmación
echo "El usuario $username ha sido creado y se han aplicado permisos en la ruta $path."


