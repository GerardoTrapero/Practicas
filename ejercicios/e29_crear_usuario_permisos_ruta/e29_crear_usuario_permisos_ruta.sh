#Crea un script que a partir de un fichero con una línea con un nombre de usuario, otra con la contraseña y una tercera con una ruta, aplique permisos de lectura, escritura y ejecución al propietario, lectura al grupo y lectura a otros, cree al usuario y de permisos en la ruta.

#Formato del fichero:

#	rosa
#	1234Abcd
#	./fichero.txt

#!/bin/bash

# Verifica si se proporcionó el nombre del archivo como argumento
if [ $# -ne 1 ]; then
    echo "Uso: $0 <archivo>"
    exit 1
fi

archivo=$1

# Verifica si el archivo existe
if [ ! -f "$archivo" ]; then
    echo "El archivo $archivo no existe."
    exit 1
fi

# Lee el nombre de usuario, la contraseña y la ruta desde el archivo
usuario=$(sed -n '1p' "$archivo")
contrasena=$(sed -n '2p' "$archivo")
ruta=$(sed -n '3p' "$archivo")

# Verifica si el usuario ya existe
if id "$usuario" &>/dev/null; then
    echo "El usuario $usuario ya existe."
    exit 1
fi

# Crea el usuario con la contraseña proporcionada
sudo useradd -m -p $(openssl passwd -1 "$contrasena") "$usuario"

# Aplica permisos en la ruta
sudo chmod 700 "$ruta"
sudo chown "$usuario" "$ruta"

echo "Usuario $usuario creado y permisos aplicados en la ruta $ruta exitosamente."

