#!/bin/bash

# Asigna los enteros a las variables
entero1=10
entero2=20

# Compara los enteros y muestra el mayor
if [ "$entero1" -gt "$entero2" ]; then
    echo "El mayor es $entero1"
elif [ "$entero2" -gt "$entero1" ]; then
    echo "El mayor es $entero2"
else
    echo "Los enteros son iguales"
fi
