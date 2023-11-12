#!/bin/bash

# 1. Crea un directorio llamado "mis_archivos"
mkdir -p mis_archivos

# 2. Dentro de "mis_archivos", crea dos archivos llamados "archivo1.txt" y "archivo2.txt"
touch mis_archivos/archivo1.txt
touch mis_archivos/archivo2.txt

# 3. Cambia los permisos de "archivo1.txt" para que sea de solo lectura
chmod 444 mis_archivos/archivo1.txt

# 4. Cambia los permisos de "archivo2.txt" para que sea de lectura y escritura
chmod 644 mis_archivos/archivo2.txt

# 5. Muestra los permisos actualizados de ambos archivos
echo "Permisos de archivo1.txt: $(ls -l mis_archivos/archivo1.txt)"
echo "Permisos de archivo2.txt: $(ls -l mis_archivos/archivo2.txt)"
