#!/bin/bash

echo ""
echo ""
echo "1.1. Crear directorio llamado practica_admin en directorio de inicio"
echo "--------------------------------------------------------------------"
echo "Crear directorio practica_admin"
echo "-------------------------------"
mkdir practica_admin  #/home/gerardo/Documentos/practica_entregable
echo ""
echo "Estamos en :"
pwd
echo ""
ls -l
echo ""
pwd
echo ""
echo "Termina 1.1"
echo "-----------------------------------"
#exit 0
echo ""
echo "1.2. Acceder al directorio practica_admin y crear tres subdirectorios"
echo "crear directorios documentos, fotos y backups"
echo ""
#ls -l
cd practica_admin
mkdir documentos fotos backups
echo
echo "volviendo a practica_admin"
cd ..
echo ""
pwd
echo
echo "Termina 1.2"
#exit 0
echo
echo "-----------------------------------"
echo "1.3. Dar solo permiso solo al propietario para poder modificar el contenido"
echo "cambiando permisos del propietario a directorios creados"
echo "------------------------------------"
chmod 755 practica_admin/documentos
chmod 755 practica_admin/fotos
chmod 755 practica_admin/backups
cd practica_admin
ls -l
echo "estoy aqui: en /practica_admin"
echo
pwd
echo "termina 1.3"
echo "------------------------------------"
#exit 0
echo "-------------------------------------------------"
echo "2.1 En directorio documentos crear archivo de texto, notas.txt, y agregar algunas notas personales"
echo ""
echo "voy a /documentos"
cd documentos
echo "estoy /documentos"
echo ""
echo "-----------------------------------------"
pwd
echo "------------------------------------------"
echo ""
ls -l
echo "creando notas.txt"
touch notas.txt
echo ""
echo "notas.txt creado"
echo ""
ls -l
echo
echo "Estas son las notas personales agregadas al archivo notas" > notas.txt
echo
echo "--------------------------------------------"
sudo cat notas.txt
echo "--------------------------" 
echo "estoy en /documentos "
pwd
echo "------------------------------------ "
ls -l
echo ""
echo "Termina 2.1"
echo "----------------------------------------------"
#exit 0
echo "--------------------------------------------"
echo #2.2. En el directorio fotos crear un archivo llamado album.txt y cambiar permisos para que solo el propietario pueda leer y escribir en el.
echo
echo "volviendo a /fotos"
echo
cd ..
echo 
echo "estoy aqui:"
pwd
echo "crear album.txt con sudo"
touch album.txt
echo "creado album.txt con sudo"
echo
sudo chmod 600 album.txt
echo "cambiados permisos de propietario solo puede leer y escribir"
ls -l
echo "Termina 2.2."
echo
#exit 0
echo "----------------------------------"
#2.3 Mueve el archivo album.txt al directorio backups cambiando el nombre para que añada fecha y tenga extension .bak
#mv album.txt ../backups
echo "movido album.txt a /backups"
cd backups
ls -l
echo "renombrando backups.txt a backups.bak con configuracion de fecha"
#mv album.txt album_$(date+ \%d\%m\Y%).bak
echo Copiar archivo notas.txt a en backups cambiando el nomgre a notas_personales
echo #2.4 Copiar archivo notas.txt a directorio backups cambiando el nombre por notas_personales.txt
cp ../documentos/notas.txt ../backups/notas_personales.txt
echo "-----------------------------------------------------"
ls -l
echo "-----------------------------------------------------"
echo "Termina 2.3"
echo "----------------------------------"
#exit 0
cd documentos
cp notas.txt backups
ls -l
#echo
#echo "estoy aqui"
#echo
#pwd
#echo "FIN"

# 3.1. Busca y muestra todos los archivos en tu sistema con la extensión ".txt".

find / -type f -name "*.txt"

# 3.2.Encuentra todos los archivos en tu sistema que contengan la palabra "importante" en su contenido.

grep -rl "importante" / 2>/dev/null

# 4.1. Elimina el archivo "notas.txt" del directorio "documentos".

rm ~/practica_admin/documentos/notas.txt

# 4.2. Borra el directorio "fotos" y su contenido en su totalidad.

rm -r ~/practica_admin/fotos

# 4.3. Muestra todos los archivos y directorios en el directorio de tu home que hayan sido modificados en los últimos 30 días (esto lo puedes hacer con find).

find ~/ -type f -mtime -30 -o -type d -mtime -30


