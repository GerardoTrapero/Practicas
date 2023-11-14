#!/bin/bash
#Crear archivo "archivo-sercreto.txt" en directorio de inicio /home/gerardotrapero
touch /home/gerardotrapero/archivo_secreto.txt
#Verificar permisos de archivos y propietarios con ls -l
ls -l /home/gerardotrapero/archivo_secreto.txt
#Permitir la lectura por todos los usuarios
chmod a+r /home/gerardotrapero/archivo_secreto.txt
#Cambiar de un usuario a otro con sudo
sudo su - nuevo_gerardo
#Verificar si nuevo_gerardo puede leer el archivo
cat /home/nuevo_gerardo/archivo_secreto.txt
#Volver a usuario original
exit
#Cambiar permisos del archivo para que solo el propietario tenga permisos de lectura y escritura
#Eliminando los permisos de lectura y escritura para el grupo y otros
chmod go-rw /home/gerardotrapero/archivo_secreto.txt
#Intentar acceder al archivo como nuevo_gerardo otra vez para comprobar los permisos aplicados funcionan.
#nuevo_gerardo no puede ni leer ni escribir
sudo su nuevo_gerardo
cat home/nuevo_gerardo/archivo_secreto.txt
#nuevo_gerardo recibe un error de permisos al acceder al archivo


-
