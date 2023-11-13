#!/bin/bash

#Unir la ejecucion de tres ejercicios en un script
echo "Hola mundo"
while true
do
	echo "Introducir por pantalla la opción deseada"
	echo ""
	echo "+ Listar numeros (teclear 1)"
	echo "+ Buscar cadena en una lista de ficheros (teclear 2)"
	echo "+ Crear 2 archivos con distintos permisos en directorio (teclear 3)"
	echo "+ Finalizar (teclear 4)"

read opcion

case "$opcion" in

1)
        echo "Inserta el primer numero"
        read n1
        
	echo "Inserta el segundo numero"
        read n2

        if [ $n1 -le $n2 ]; then
                echo "entro por $n1 es menor que $n2"
                for (( i=$n1; i<=$n2; i++)); do
                        echo $i
                done
        else
                echo "entro por $n1 es mayor que $n2"
                for ((i=$n1; i>=$n2; i--)); do
                        echo $i
                done
        fi
	;;
2)
        echo "Inserta la ruta del directorio"
        read directorio
        echo "Inserta la cadena a buscar"
        read cadena_a_buscar

        archivos_txt=$(find "$directorio" -type f -name "*.txt")

        for archivo in $archivos_txt; do

                if grep -q "$cadena_a_buscar" "$archivo"; then
                        echo "Cadena encontrada en el archivo: $archivo"
                        grep "$cadena_a_buscar" "$archivo"
                      echo"------------------------------------------"
              fi
        done
	;;

3)

	echo "¿Como quieres realizar el script?"

	echo "A. Metodo simple (teclea A)"
	echo "B. Con validaciones (teclea B)"

	read metodo

	case "$metodo" in

		A)
			echo "Metodo simple"

		# 1. Crea un directorio 
			echo "crear un directorio:"
			read directorio
			mkdir -p $directorio

		# 2. Dentro de "mis_archivos", crea dos archivos llamados "archivo1.txt" y "archivo2.txt"
			echo "crear 1º archivo"
			read archivo1
			touch $directorio/$archivo1.txt
			echo "crear 2º archivo"
			read archivo2
			touch $directorio/$archivo2.txt

		# 3. Cambia los permisos de "archivo1.txt" para que sea de solo lectura
			chmod 444 $directorio/$archivo1.txt

		# 4. Cambia los permisos de "archivo2.txt" para que sea de lectura y escritura
			chmod 644 $directorio/$archivo2.txt

		# 5. Muestra los permisos actualizados de ambos archivos
			echo "Permisos de archivo1.txt: $(ls -l $directorio/$archivo1.txt)"
			echo "Permisos de archivo2.txt: $(ls -l $directorio/$archivo2.txt)"
	;;
		B)
			echo "Con validaciones:"
	
		# 1. Crea un directorio 
        
			echo "crear un directorio:"
                	read directorio

                	mkdir -p $directorio

       		 # 2. Dentro de "mis_archivos", crea dos archivos llamados "archivo1.txt" y "archivo2.txt"

                	echo "crear 1º archivo"
                	read archivo1
                	touch $directorio/$archivo1.txt

                	echo "crear 2º archivo"
                	read archivo2
                	touch $directorio/$archivo2.txt

	
		# 3. Verifica si el directorio "mis_archivos" ya existe
			if [ -d "$directorio" ]; then
    				echo "El directorio $directorio ya existe."
			else
    	
			# Si no existe, crea el directorio

    				mkdir "$directorio"
   				echo "Se ha creado el directorio $directorio."
			
			fi

		# 4. Verifica si "archivo1.txt" ya existe en el directorio
			if [ -e "$directorio/$archivo1" ]; then
    				echo "El archivo $archivo1 ya existe en $directorio."
			else
    			# Si no existe, crea el archivo y cambia los permisos a solo lectura
    				touch "$directorio/$archivo1"
   				chmod 444 "$directorio/$archivo1"
    				echo "Se ha creado $archivo1 con permisos de solo lectura en $directorio."
			fi

		# 5. Verifica si "archivo2.txt" ya existe en el directorio
			if [ -e "$directorio/$archivo2" ]; then
    				echo "El archivo $archivo2 ya existe en $directorio."
			else
    			# Si no existe, crea el archivo y cambia los permisos a lectura y escritura
    				touch "$directorio/$archivo2"
    				chmod 644 "$directorio/$archivo2"
    				echo "Se ha creado $archivo2 con permisos de lectura y escritura en $directorio."
			fi

		# 6. Muestra los permisos actualizados de ambos archivos
			echo "Permisos de $archivo1: $(ls -l "$directorio/$archivo1")"
			echo "Permisos de $archivo2: $(ls -l "$directorio/$archivo2")"
		;;

	*)
		echo "Opcion no valida"
		exit 1

4)
	echo "Finalización"
	exit 0
	;;
*)
 	echo "Opción no válida"
	exit 0
	;;
 esac
done





