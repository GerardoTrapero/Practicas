#!/bin/bash
#Definir el usuario y contraseña correctos
usuario_OK="Pepe"
clave_OK="1234"

#Comprobar si se dan los dos argumentos
	if [ $# -ne 2 ]; then
		echo "Uso: $0 <usuario> <clave>"
		exit 1
	fi
#Recoger argumentos dados

echo "Dar datos"
usuario="$1"
echo "$1"
clave="$2"
echo "$2"

#Comprobar si usuario y clave son correctos

#if [ "$usuario" = "usuario_OK" ] && [ "$clave" = "clave_OK" ]; then
#	echo "Usuario y clave OK"
#else
#	echo "Usuario y clave NO OK"
#fi

if [ "$usuario" -eq "usuario_OK" ]; then
	echo "Usuario "$1" OK"
else
	echo "Usuario NO Ok"
	exit 1
fi
if [ "$clave" -eq "clave_OK" ]; then
	echo "Clave "$2" OK"
else
	echo "Clave NO OK"
	exit 1
fi
