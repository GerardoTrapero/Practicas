#!/bin/bash

# Lee las dos variables enteras desde la entrada estándar
echo "Introduce el primer número: "
read numero1
echo "Introduce el segundo número: "
read numero2

# Compara las variables y muestra el resultado
if [ $numero1 -gt $numero2 ]; then
  echo "El primer número ($numero1) es mayor que el segundo número ($numero2)."
elif [ $numero2 -gt $numero1 ]; then
  echo "El segundo número ($numero2) es mayor que el primer número ($numero1)."
else
  echo "Ambos números son iguales: $numero1"
fi
