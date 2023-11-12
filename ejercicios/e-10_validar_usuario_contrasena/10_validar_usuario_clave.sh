#!/bin/bash

#Inicializar Usuario y clave

userOK="Pepe"
claveOK="1234"

#Obtener  usuario y contraseña

echo "¿Usuario?"
read user
echo "¿Clave?"
read clave

#Validar usuario y contraseña

if [ "$user" == "$userOK" ]; then
                echo "Usuario Correcto"
  	else
                echo "Usuario Incorrecto"
fi

if [ "$clave" == "$claveOK" ]; then
		echo "Clave Correcta"
	else 
		echo "Clave Incorrecta"
fi		
