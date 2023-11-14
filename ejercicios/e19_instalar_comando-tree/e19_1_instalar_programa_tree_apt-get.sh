#!/bin/bash

# Diseñar un script que realice lo siguiente:

#    Utilza el comando sudo para instalar un programa de tu elección utilizando apt-get. Por ejemplo, puedes instalar "tree" con sudo apt-get install tree.
#    Luego, espera la entrada del usuario para continuar, indícale que ya se ha instalado y que como es una pruba debe pulsar enter para desinstalar.
#    Una vez que el usuario presiona Enter, utiliza sudo apt-get remove para desinstalar el programa.
#----------------------------------------------------------------------------------------------------------------------------------------------------------

#Verificar si el usuario es root

# 


if [[ $EUID -ne 0 ]]; then
	echo "Este script debe de ejecuarse como root con sudo."
	exit 1
fi

#Instalar el programa tree

echo "Instalar el programa..."

sudo apt-get update
sudo apt-get install tree

#Esperar la entrada de usuario para continuar

read -p "El programa se ha instalado. Presionar Enter para desinstalar..."

#Desinstalar el programa

echo "Desinstalando el programa..."

sudo apt-get remove tree

echo "Desinstalacion completa"

#Salir del script

exit 0
