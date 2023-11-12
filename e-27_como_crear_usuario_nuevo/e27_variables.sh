#!/bin/bash
# Dar permiso de superusuario
	sudo
# Crear un nuevo usuario usando variables
# Dar variables para el nuevo usuario
	username="nuevo_usuario"
	password="clave_segura"
# Verificar si nuevo usuario existe
	if id "$username" &> /dev/null; then
		echo "El usuario $username ya existe"
		exit 1
	fi
# Crear el usuario
	useradd -m -s /bin/bash "$username"
	echo "$username : $password" | chpasswd
	echo "El usuario $username ha sido creado con exito."



