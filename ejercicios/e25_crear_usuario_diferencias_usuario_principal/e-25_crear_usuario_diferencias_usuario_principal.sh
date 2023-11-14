#!/bin/bash
#Crear el nuevo usuario:

sudo useradd -m nuevo-usuario

#Establecer una contraseña para el nuevo usuario:

sudo  passwd nuevo-usuario

# Pedirá que ingreses y confirmes la contraseña

# Iniciar sesión con el nuevo usuario:
# cambiar al nuevo usuario y explorar las diferencias ejecutando:

su - nuevo-usuario

# Pedirá la contraseña que estableciste en el paso anterior.
# Después de ingresarla correctamente, estaá dentro de la sesión del nuevo usuario.

# Ejecutar comandos como ls -l en diferentes directorios para ver las diferencias en los permisos de archivos y carpetas
# También ejecutar comandos que requieran privilegios de superusuario. El nuevo usuario no tiene acceso directo a ellos, a menos que use sudo y proporcione su contraseña.

#Regresar a usuario principal

exit


