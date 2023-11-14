#!/bin/bash

# Verificar si se proporcionan los parámetros requeridos
if [ $# -ne 3 ]; then
  echo "Uso: $0 <nombre_de_usuario> <nombre_completo> <contraseña>"
  exit 1
fi

# Obtener los parámetros en variables
username="$1"
full_name="$2"
password="$3"

# Comprobar si el nombre de usuario ya existe
if id "$username" &>/dev/null; then
  echo "El nombre de usuario $username ya existe."
  exit 1
fi

# Crear el usuario con los parámetros proporcionados
useradd -m -c "$full_name" "$username"

# Establecer la contraseña del usuario
echo "$username:$password" | chpasswd

# Mostrar un mensaje de confirmación
echo "El usuario $username ha sido creado exitosamente."



























