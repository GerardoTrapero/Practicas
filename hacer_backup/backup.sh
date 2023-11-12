#!/bin/bash
raiz=/home/gerardotrapero/Documentos/ejercicios/
 if [ -d $raiz$1 ]; then
	date >> /tmp/gerardo.txt

	echo "Copiando los ficheros del directorio $raiz$1"
	cp -rf $raiz$1 /home/gerardotrapero/Documentos/ejercicios/backup/

else
	echo "NO exite el directorio $1"
fi
