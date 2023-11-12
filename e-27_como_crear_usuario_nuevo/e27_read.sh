#!/bin/bash

# Solicitar el nombre de usuario
read -p "Ingrese el nombre de usuario: " username

# Solicitar el nombre completo del usuario
read -p "Ingrese el nombre completo del usuario: " full_name

# Solicitar la contraseña del usuario (se recomienda utilizar 'read -s' para ocultar la contraseña al escribirla)
read -s -p "Ingrese la contraseña del usuario: " password
echo  # Agregar una línea en blanco después de ingresar la contraseña

# Crear el usuario con los datos proporcionados
useradd -m -c "$full_name" "$username"

# Establecer la contraseña del usuario
echo "$username:$password" | chpasswd

# Mostrar un mensaje de confirmación
echo "El usuario $username ha sido creado exitosamente."

Este script solicita al usuario ingresar el nombre de usuario, el nombre completo y la contraseña, crea el usuario utilizando useradd y luego establece la contraseña utilizando chpasswd. Asegúrate de dar permisos de ejecución al script con chmod +x script.sh, donde script.sh es el nombre del archivo que contiene el script. Luego, puedes ejecutar el script usando ./script.sh.

Ten en cuenta que debes tener privilegios de superusuario (root) para ejecutar el script, ya que la creación de usuarios generalmente requiere permisos especiales. Además, ten cuidado con la seguridad de las contraseñas y considera implementar prácticas seguras de gestión de usuarios en tu entorno.
