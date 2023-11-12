#!/bin/bash
ni=$1
nf=$2

if [ $ni -gt $nf ]; then
	echo "El primer numero es mayor que el segundo"
	exit 1
fi
for (( i = $ni; i <= $nf; i++ )); do
	echo $i

done

echo "Fin de intervalo"
